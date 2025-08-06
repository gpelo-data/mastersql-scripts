# Proyecto SQL Server: Tablas Emp y Dept

Este repositorio contiene scripts SQL para la creación y carga inicial de las tablas `Emp` (empleados) y `Dept` (departamento), junto con consultas básicas para practicar con datos de ejemplo.   
El proyecto es compatible con SQL Server y está pensado para aprendizaje y pruebas.

---

## Contenido

- `scripts/create_tables.sql` — Script para crear las tablas `Dept` y `Emp` con sus claves primarias y foráneas.
- `scripts/insert_data.sql` — Script para insertar datos de ejemplo en ambas tablas.
- `scripts/weekN_queries.sql` — Consultas básicas de ejemplo sobre las tablas que se irán agregando semana a semana. (N: número de la semana en que fué hecha la publicación a partir del primer post)

---

## Requisitos

- SQL Server (Management Studio o versión compatible)
- Acceso para crear bases de datos y tablas

---

## Tutorial de uso

### 1. Clonar el repositorio

```bash
git clone https://github.com/tu_usuario/tu_repositorio.git
cd tu_repositorio/scripts
```

### 2. Crear las tablas

Abre SQL Server Management Studio (SSMS) o tu administrador de BD de confianza y conecta con tu servidor. Luego abre el archivo create_tables.sql y ejecútalo para crear las tablas Dept y Emp.  

*Nota: Si usas otro SGBD, es posible que necesites adaptar la sintaxis en este paso y en el siguiente.*

### 3. Insertar datos de ejemplo

Luego abre el archivo `insert_data.sql` y ejecútalo para insertar datos en las tablas recién creadas.

### 4. Practica consultas

Crea tus propias consultas para practicar y compara los resultados con los de este proyecto.

## Estructura de carpetas

```
/scripts
├── create_tables.sql
├── insert_data.sql
└── weekN_queries.sql
```

## Autor

Gastón Peló

## Licencia


Este proyecto está bajo la Licencia [MIT](https://opensource.org/licenses/MIT)