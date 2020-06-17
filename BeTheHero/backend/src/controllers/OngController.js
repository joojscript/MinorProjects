import crypto from 'crypto';
import connection from '../database/index';

class OngController {
  async index(req, res) {

    const ongs = await connection('ongs').select('*');

    return res.json({ ongs });
  }

  async store(req, res) {
    const { name, email, city, whatsapp, uf } = req.body;

    const id = crypto.randomBytes(4).toString('hex');

    const response = connection('ongs').insert({
      id,
      name,
      email,
      whatsapp,
      uf,
    });

    return res.json({ id });
  }
}

export default new OngController();