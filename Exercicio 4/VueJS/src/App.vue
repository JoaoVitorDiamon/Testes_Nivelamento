<template>
    <div class="container">
      <h1>Consulta Operadora de Plano</h1>
      <div class="input-container">
        <label for="registroANS">Consulte pela operadora:</label>
        <input
          type="text"
          id="registroANS"
          v-model="registroANSInput"
          placeholder="Ex: 421715 | Bradesco"
        />
        <button @click="consultarOperadora">Consultar</button>
      </div>

      <div v-if="operadora.length > 0">
        <div v-for="(item, index) in operadora" :key="index" class="info-card">
          <div class="field">
            <strong>Registro ANS:</strong> {{ item.Registro_ANS }}
          </div>
          <div class="field">
            <strong>CNPJ:</strong> {{ item.CNPJ }}
          </div>
          <div class="field">
            <strong>Razão Social:</strong> {{ item.Razao_Social }}
          </div>
          <div class="field">
            <strong>Nome Fantasia:</strong> {{ item.Nome_Fantasia }}
          </div>
          <div class="field">
            <strong>Modalidade:</strong> {{ item.Modalidade }}
          </div>
          <div class="field">
            <strong>Endereço:</strong> {{ item.Logradouro }}, {{ item.Numero }} - {{ item.Complemento }} <br />
            {{ item.Bairro }}, {{ item.Cidade }} - {{ item.UF }} <br />
            CEP: {{ item.CEP }}
          </div>
          <div class="field">
            <strong>Telefone:</strong> {{ item.Telefone }} <br />
            <strong>Fax:</strong> {{ item.Fax }}
          </div>
          <div class="field">
            <strong>Email:</strong> <a :href="'mailto:' + item.Endereco_eletronico">{{ item.Endereco_eletronico }}</a>
          </div>
          <div class="field">
            <strong>Representante:</strong> {{ item.Representante }} - {{ item.Cargo_Representante }}
          </div>
          <div class="field">
            <strong>Data Registro ANS:</strong> {{ item.Data_Registro_ANS }}
          </div>
          <div class="field">
            <strong>Região de Comercialização:</strong> {{ item.Regiao_de_Comercializacao }}
          </div>
        </div>
      </div>

      <div v-else>
        <p>Operadora não encontrada.</p>
      </div>
    </div>
  </template>

  <script>
  export default {
    data() {
      return {
        registroANSInput: '',
        operadora: [],
      };
    },
    methods: {
      async consultarOperadora() {
        if (!this.registroANSInput) {
          alert('Por favor, insira um Registro ANS.');
          return;
        }

        try {
          const response = await fetch(`http://127.0.0.1:8000/search/${this.registroANSInput}`, {
            headers: {
              'Content-Type': 'application/json',
            },
          });

          const data = await response.json();

          if (response.ok) {
            this.operadora = data;
          } else {
            alert('Operadora não encontrada ou erro na consulta.');
          }
        } catch (error) {
          console.error('Erro ao consultar a API:', error);
          alert('Ocorreu um erro ao consultar a API.');
        }
      },
    },
  };
  </script>

<style scoped>
.container {
  max-width: 900px;
  margin: 0 auto;
  padding: 30px;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  background-color: #f7f7f7;
  border-radius: 8px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

h1 {
  font-size: 28px;
  text-align: center;
  color: #333;
  margin-bottom: 30px;
  font-weight: 600;
}

.input-container {
  margin-bottom: 25px;
  display: flex;
  flex-direction: column;
}

.input-container label {
  font-size: 16px;
  color: #555;
  margin-bottom: 8px;
}

.input-container input {
  padding: 12px;
  font-size: 16px;
  border: 1px solid #ccc;
  border-radius: 6px;
  background-color: #fff;
  color: #333;
  transition: border-color 0.3s ease;
}

.input-container input:focus {
  border-color: #0056b3;
  outline: none;
}

.input-container button {
  padding: 12px 18px;
  background-color: #007bff;
  color: white;
  border: none;
  border-radius: 6px;
  cursor: pointer;
  font-size: 16px;
  transition: background-color 0.3s ease, transform 0.2s ease;
}

.input-container button:hover {
  background-color: #0056b3;
  transform: scale(1.05);
}


.info-card {
  border: none;
  border-radius: 18px;   background-color: #ffffff;
  box-shadow: 0 8px 30px rgba(0, 0, 0, 0.15);
  padding: 25px;
  margin-bottom: 25px;
  transition: all 0.3s ease-in-out;
  overflow: hidden;
}

.info-card:hover {
  transform: translateY(-10px);
  box-shadow: 0 15px 40px rgba(0, 0, 0, 0.2);
}


.info-card .field {
  font-size: 16px;
  color: #333;
  margin-bottom: 15px;
}

.info-card .field strong {
  color: #0056b3;
  font-weight: 600;
}

.info-card .field a {
  color: #0056b3;
  text-decoration: none;
  font-weight: 600;
  transition: color 0.3s ease;
}

.info-card .field a:hover {
  color: #003366;
}


.field {
  margin-bottom: 15px;
  font-size: 16px;
  color: #333;
}

strong {
  color: #007bff;
  font-weight: 500;
}

a {
  color: #007bff;
  text-decoration: none;
  transition: color 0.3s ease;
}

a:hover {
  color: #0056b3;
  text-decoration: underline;
}

.b-alert {
  text-align: center;
  background-color: #f8d7da;
  color: #721c24;
  border-color: #f5c6cb;
  padding: 15px;
  border-radius: 6px;
  margin-top: 20px;
}
</style>
