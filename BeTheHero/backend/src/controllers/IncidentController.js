import connection from '../database/index';
import { response } from 'express';

class IncidentController {
  async index(req, res) {
    const { page = 1 } = req.query;

    const [count] = await connection('incidents').count();

    res.header('X-Total-Pages', count['count(*)']);

    const incidents = await connection('incidents')
      .join('ongs', 'ongs.id', '=', 'incidents.ong_id')
      .limit(5)
      .offset((page--) * 5)
      .select([
        'incidents.*',
        'ongs.name',
        'ongs.email',
        'ongs.whatsapp',
        'ongs.city',
        'ongs.uf'
      ]);

    return res.json({ incidnets });
  }

  async store(req, res) {
    const { title, description, value } = req.body;
    const { authorization: ong_id } = req.headers;

    console.log(ong_id);

    const [id] = await connection('incidents').insert({
      title,
      description,
      value,
      ong_id
    });

    return response.json({ id });
  }

  async delete(req, res) {
    const { id } = req.params;
    const { authorization: ong_id } = req.headers;

    const incident = connection('incidents').where('id', id).select('ong_id').first();

    if (incident.ong_id != ong_id) {
      return res.status(401).json({ error: 'Operation not permitted.' });
    }

    await connection('incidents').where('id', id).delete();

    return response.status(204).send();
  }
}

export default new IncidentController();