# Informe de Análisis — EduTrack: Tablas Relacionadas

## Introducción

En este proyecto he trabajado con la base de datos de EduTrack, que está dividida en tres tablas: `students`, `courses` y `enrollments`.

El objetivo ha sido aprender a relacionar las tablas y utilizar consultas SQL para obtener información sobre los estudiantes, los cursos y las inscripciones.

He realizado 10 consultas SQL para analizar los datos. Para ello he utilizado INNER JOIN, LEFT JOIN y funciones como COUNT, AVG y SUM.

A continuación explico los resultados que he obtenido.

## Q1. Todas las inscripciones

En la primera consulta he obtenido un total de **16 inscripciones**. He podido ver el nombre de cada estudiante, el curso en el que está inscrito y su porcentaje de completado.

Algunos de los resultados son:

| Estudiante | Curso | Completado |
|---|---|---|
| Emily Watson | Intro to Python | 85 % |
| Emily Watson | Web Design Basics | 60 % |
| Klaus Weber | Intro to Python | 92 % |
| Klaus Weber | Data Analysis with SQL | 78 % |
| Marco Rossi | Advanced Python | 95 % |

Con esta consulta he podido comprobar cómo se relacionan las tres tablas para mostrar toda la información junta.

## Q2. Estudiantes con cursos aprobados

En esta consulta he buscado los estudiantes que tienen algún curso aprobado.

El resultado ha sido de **6 inscripciones aprobadas**, correspondientes a 4 estudiantes.

| Estudiante | Curso aprobado |
|---|---|
| Emily Watson | Intro to Python |
| Klaus Weber | Intro to Python |
| Klaus Weber | Data Analysis with SQL |
| Marco Rossi | Advanced Python |
| Marco Rossi | Intro to Python |
| Priya Sharma | Digital Marketing 101 |

He visto que Klaus Weber y Marco Rossi son los que tienen más cursos aprobados, con dos cada uno.

## Q3. Porcentaje medio por instructor

En esta consulta he calculado la media de completado de los estudiantes de cada instructor.

Los resultados han sido:

| Instructor | Media |
|---|---:|
| Marta López | 66,14 % |
| Carlos Vega | 40,00 % |
| Lucia Prades | 36,50 % |
| Pending assignment | 0,00 % |

La profesora con la media más alta es Marta López, con un 66,14 %.

También aparecen cursos pendientes de asignar a un profesor, con una media de completado del 0 %.

## Q4. Estudiantes sin inscripciones

Aquí he buscado los estudiantes que están registrados en EduTrack, pero que todavía no se han apuntado a ningún curso.

Solo ha aparecido una estudiante:

**Giulia Romano**

Correo: `giulia.romano@student.edutrack.com`

Esto significa que Giulia tiene una cuenta creada, pero no tiene ninguna inscripción.

## Q5. Cursos sin inscripciones

En esta consulta he buscado los cursos que no tienen ningún estudiante apuntado.

El resultado ha sido:

**Email Campaigns — Marketing**

Es el único curso que aparece sin inscripciones.

Creo que sería interesante revisar este curso para saber por qué no tiene estudiantes y valorar si merece la pena mantenerlo.

## Q6. Estudiantes inscritos en más de un curso

En esta consulta he contado cuántos cursos tiene cada estudiante y he mostrado solamente los que están inscritos en más de uno.

Los resultados son:

| Estudiante | Número de cursos |
|---|---:|
| Emily Watson | 3 |
| Lucia Fernandes | 3 |
| Klaus Weber | 2 |
| Marco Rossi | 2 |
| Yuki Nakamura | 2 |
| Pierre Dubois | 2 |
| Priya Sharma | 2 |

En total hay **7 estudiantes inscritos en más de un curso**.

Emily Watson y Lucia Fernandes son las que tienen más inscripciones, con 3 cursos cada una.

## Q7. Ingresos por categoría

En esta consulta he calculado los ingresos por categoría utilizando el precio actual de cada curso.

Los resultados son:

| Categoría | Total |
|---|---:|
| Programming | 409,93 |
| Data | 179,97 |
| Design | 169,96 |
| Marketing | 59,98 |

La categoría que más ingresos genera según este cálculo es **Programming**, con 409,93.

Después aparecen Data, Design y Marketing.

Para hacer este cálculo he utilizado el precio actual de los cursos (`monthly_fee`) por cada inscripción, en lugar del importe que pagaron anteriormente los estudiantes.

Por eso, estos resultados no tienen por qué coincidir con el dinero realmente cobrado.

## Q8. Estudiantes por instructor

En esta consulta he contado cuántos estudiantes diferentes hay inscritos en los cursos de cada instructor.

Los resultados son:

| Instructor | Estudiantes |
|---|---:|
| Marta López | 6 |
| Carlos Vega | 3 |
| Lucia Prades | 2 |
| Pending assignment | 2 |

Marta López es la profesora que tiene más estudiantes, con un total de 6.

También aparecen 2 estudiantes inscritos en cursos que todavía están pendientes de asignar a un profesor.

## Q9. Inscripciones con estudiantes inexistentes

En esta consulta he comprobado si hay alguna inscripción relacionada con un estudiante que no existe en la tabla `students`.

**Resultado: 0 registros.**

No ha aparecido ningún resultado, así que todas las inscripciones tienen un estudiante válido asociado.

## Q10. Inscripciones con cursos inexistentes

Por último, he comprobado si existe alguna inscripción relacionada con un curso que ya no aparece en la tabla `courses`.

**Resultado: 0 registros.**

Tampoco se ha encontrado ningún caso, por lo que todas las inscripciones están relacionadas con cursos existentes.

## Conclusiones

Con este proyecto he practicado cómo trabajar con varias tablas relacionadas y cómo utilizar JOIN para obtener información que no está en una sola tabla.

Después de realizar las 10 consultas, he podido comprobar que:

- Hay 16 inscripciones en total.
- Programming es la categoría con mayores ingresos según los precios actuales.
- Marta López es la profesora con mayor porcentaje medio de completado.
- Giulia Romano es la única estudiante sin inscripciones.
- Email Campaigns es el único curso sin estudiantes apuntados.
- No se han encontrado inscripciones relacionadas con estudiantes o cursos inexistentes.

También he aprendido la diferencia entre INNER JOIN y LEFT JOIN, y cómo utilizar GROUP BY, COUNT, AVG y SUM para analizar los datos.

En general, este proyecto me ha ayudado a entender mejor cómo se relacionan las tablas de una base de datos y cómo podemos obtener información útil a partir de ellas.
