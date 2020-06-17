import connection from '../database/index';
import { response } from 'express';

class ProfileController {
  async index(req, res) {
    const { authorization: ong_id } = req.headers;

    const incidents = await connection('incidents').where('ong_id', ong_id).select("*");

    return response.json(incidents);
  }
}

export default new ProfileController();