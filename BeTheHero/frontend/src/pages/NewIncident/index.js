import React, { useState } from 'react';
import { Link, useHistory } from 'react-router-dom';

import api from '../../services/api';

import { FiArrowLeft } from 'react-icons/fi';

import logoIMG from '../../assets/logo.svg';

import './styles.css';

function NewIncident() {
  const [title, setTitle] = useState('');
  const [description, setDescription] = useState('');
  const [value, setValue] = useState('');

  const ongId = localStorage.getItem('ongId');

  const history = useHistory();

  async function handleNewIncident(e) {
    e.preventDefault();

    const data = {
      title,
      description,
      value
    };

    try {
      await api.post('incidents', data, {
        headers: {
          Authorization: ongId,
        }
      });

      history.push('/profile');
    } catch (e) {
      alert('Erro ao cadastrar caso. Tente novamente.');
    }
  }

  return (
    <>
      <div className="new-incident-container">
        <div className="content">
          <section>
            <img src={logoIMG} alt="Be The Hero" />

            <h1>Cadastrar nobo caso</h1>
            <p>Descreva o caso detalhadamente para encontrar um herói para resolver isso.</p>

            <Link className="back-link" to="/profile" >
              <FiArrowLeft size={16} color="#E02041" />
              Voltar para Home
            </Link>
          </section>

          <form onSubmit={handleNewIncident}>
            <input
              placeholder="Título do caso"
              value={title}
              onChange={e => { setTitle(e.target.value); }}
            />
            <textarea
              placeholder="Descrição">
              value={description}
              onChange={e => { setDescription(e.target.value); }}
            </textarea>
            <input
              placeholder="Valor"
              value={value}
              onChange={e => { setValue(e.target.value); }}
            />
            <button className="button" type='submit'>Cadastrar</button>
          </form>
        </div>
      </div>
    </>
  );
}

export default NewIncident;