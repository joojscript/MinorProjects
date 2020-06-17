import express from 'express';
import cors from 'cors';
import { errors } from 'celebrate';

import routes from './routes';

class App {
  constructor() {
    this.server = express();

    this.middlewares();
    this.routes();
  }

  middlewares() {

  }

  routes() {
    this.server.use(cors());
    this.server.use(express.json());
    this.server.use(routes);
    this.server.use(errors);
  }

}

export default new App().server;