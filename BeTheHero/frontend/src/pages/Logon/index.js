import React, { useState } from 'react';
import { Link, useHistory } from 'react-router-dom';
import api from '../../services/api';

import { FiLogIn } from 'react-icons/fi';

import './styles.css';
import heroesIMG from '../../assets/heroes.png';
import logoIMG from '../../assets/logo.svg';

function Logon() {
  const [id, setId] = useState('');

  const history = useHistory();

  async function handleLogin(e) {
    e.preventDefault();

    try {
      const response = await api.post('/sessions', { id });

      localStorage.setItem('ongId', id);
      localStorage.setItem('ongName', response.data.name);

      history.push('/profile');
    } catch (e) {
      alert('Um erro ocorreu. Tente novamente.');
    }
  }

  return (
    <>
      <div className="logon-container">
        <section className="form">

          <img src={logoIMG} alt="Be The Hero" />

          <form onSubmit={handleLogin}>
            <h1>Faça seu Logon</h1>

            <input
              placeholder="Sua ID"
              value={id}
              onChange={e => { setId(e.target.value) }}
            />
            <button type="submit" className="button">Entrar</button>

            <Link to="/register" className="back-link">
              <FiLogIn size={16} color="#E02041" />
              Não tenho cadastro
            </Link>
          </form>
        </section>
        <img src={heroesIMG} alt="Heroes" />
      </div>


    </>
  );
}

export default Logon;