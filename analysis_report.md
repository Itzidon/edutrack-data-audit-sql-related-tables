# Informe de Análisis — EduTrack: Tablas Relacionadas

## Introducción

En este proyecto se analiza la base de datos relacional de EduTrack, formada por tres tablas: `students`, `courses` y `enrollments`.

El objetivo es identificar inscripciones, cursos aprobados, porcentajes de completado, ingresos por categoría y posibles problemas de integridad de datos.

Para realizar el análisis se han ejecutado diez consultas SQL utilizando INNER JOIN, LEFT JOIN y funciones de agregación.

## Q1. Todas las inscripciones

La consulta devuelve **16 inscripciones**, mostrando el nombre del estudiante, el curso y su porcentaje de completado.

Entre los resultados se encuentran:

| Estudiante | Curso | Completado |
|---|---|---:|
| Emily Watson | Intro to Python | 85 % |
| Emily Watson | Web Design Basics | 60 % |
| Klaus Weber | Intro to Python | 92 % |
| Klaus Weber | Data Analysis with SQL | 78 % |
| Marco Rossi | Advanced Python | 95 % |

En total existen 16 inscripciones repartidas entre diferentes estudiantes y cursos.

## Q2. Estudiantes con cursos aprobados

Se encontraron **6 inscripciones aprobadas**, correspondientes a cuatro estudiantes distintos.

| Estudiante | Curso aprobado |
|---|---|
| Emily Watson | Intro to Python |
| Klaus Weber | Intro to Python |
| Klaus Weber | Data Analysis with SQL |
| Marco Rossi | Advanced Python |
| Marco Rossi | Intro to Python |
| Priya Sharma | Digital Marketing 101 |

Klaus Weber y Marco Rossi tienen dos cursos aprobados cada uno.

## Q3. Porcentaje medio por instructor

| Instructor | Media |
|---|---:|
| Marta López | 66,14 % |
| Carlos Vega | 40,00 % |
| Lucia Prades | 36,50 % |
| Pending assignment | 0,00 % |

Marta López presenta el mayor porcentaje medio de completado. Los cursos pendientes de asignación tienen una media del 0 %.

## Q4. Estudiantes sin inscripciones

La consulta identifica a **Giulia Romano**, cuyo correo es `giulia.romano@student.edutrack.com`.

Es la única estudiante que no tiene ninguna inscripción.

## Q5. Cursos sin inscripciones

Se encontró un curso sin estudiantes inscritos:

**Email Campaigns**, perteneciente a la categoría Marketing.

Este curso podría revisarse para valorar su continuidad en el catálogo.

## Q6. Estudiantes inscritos en más de un curso

La consulta devuelve siete estudiantes:

| Estudiante | Número de cursos |
|---|---:|
| Emily Watson | 3 |
| Lucia Fernandes | 3 |
| Klaus Weber | 2 |
| Marco Rossi | 2 |
| Yuki Nakamura | 2 |
| Pierre Dubois | 2 |
| Priya Sharma | 2 |

Emily Watson y Lucia Fernandes son quienes tienen más inscripciones, con tres cursos cada una.

## Q7. Ingresos por categoría

El cálculo utiliza el precio actual de cada curso (`monthly_fee`) para cada inscripción.

| Categoría | Total |
|---|---:|
| Programming | 409,93 |
| Data | 179,97 |
| Design | 169,96 |
| Marketing | 59,98 |

Programming es la categoría que genera el mayor importe calculado, seguida de Data.

Estos importes representan la suma basada en los precios actuales, no necesariamente los ingresos efectivamente cobrados.

## Q8. Estudiantes por instructor

Se contabilizan los estudiantes distintos inscritos en los cursos de cada instructor.

| Instructor | Estudiantes |
|---|---:|
| Marta López | 6 |
| Carlos Vega | 3 |
| Lucia Prades | 2 |
| Pending assignment | 2 |

Marta López tiene el mayor número de estudiantes distintos. Existen también dos estudiantes asociados a un curso pendiente de asignación.

## Q9. Integridad de estudiantes

**Resultado: 0 registros.**

No se encontraron inscripciones cuyo `student_id` no corresponda con un estudiante existente.

## Q10. Integridad de cursos

**Resultado: 0 registros.**

No se encontraron inscripciones cuyo `course_id` no corresponda con un curso existente.

## Conclusiones

El análisis ha permitido comprobar que la base de datos contiene 16 inscripciones y que las relaciones entre estudiantes, cursos e inscripciones funcionan correctamente.

Los principales hallazgos son:

- Programming es la categoría con mayor importe calculado según los precios actuales.
- Marta López presenta el mayor porcentaje medio de completado y el mayor número de estudiantes distintos.
- Giulia Romano no tiene ninguna inscripción.
- Email Campaigns es un curso sin estudiantes inscritos.
- No se han detectado registros huérfanos en las comprobaciones de integridad realizadas.

Como recomendación, sería conveniente revisar los cursos sin inscripciones y los cursos pendientes de asignación de instructor.

El análisis demuestra cómo las relaciones entre tablas permiten obtener información útil para la gestión de EduTrack.
