# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

User.create({
  email: 'admin@magnet.cl',
  first_name: 'Adam',
  last_name: 'Minier',
  password: '12345678',
  password_confirmation: '12345678',
  is_admin: true
})
User.create({
  email: 'test@magnet.cl',
  first_name: 'Test',
  last_name: 'Team',
  password: '12345678',
  password_confirmation: '12345678'
})
User.create({
  email: 'client@magnet.cl',
  first_name: 'Client',
  last_name: 'User',
  password: '12345678',
  password_confirmation: '12345678'
})

Commune.create([
  { name: 'Camarones', region: 'Arica y Parinacota' },
  { name: 'Arica', region: 'Arica y Parinacota' },
  { name: 'Putre', region: 'Arica y Parinacota' },
  { name: 'General Lagos', region: 'Arica y Parinacota' },
  { name: 'Iquique', region: 'Tarapacá' },
  { name: 'Alto Hospicio', region: 'Tarapacá' },
  { name: 'Pozo Almonte', region: 'Tarapacá' },
  { name: 'Pica', region: 'Tarapacá' },
  { name: 'Huara', region: 'Tarapacá' },
  { name: 'Colchane', region: 'Tarapacá' },
  { name: 'Camiña', region: 'Tarapacá' },
  { name: 'Taltal', region: 'Antofagasta' },
  { name: 'Sierra Gorda', region: 'Antofagasta' },
  { name: 'Mejillones', region: 'Antofagasta' },
  { name: 'Antofagasta', region: 'Antofagasta' },
  { name: 'San Pedro de Atacama', region: 'Antofagasta' },
  { name: 'Ollagüe', region: 'Antofagasta' },
  { name: 'Calama', region: 'Antofagasta' },
  { name: 'Tocopilla', region: 'Antofagasta' },
  { name: 'María Elena', region: 'Antofagasta' },
  { name: 'Diego de Almagro', region: 'Atacama' },
  { name: 'Chañaral', region: 'Atacama' },
  { name: 'Tierra Amarilla', region: 'Atacama' },
  { name: 'Copiapó', region: 'Atacama' },
  { name: 'Caldera', region: 'Atacama' },
  { name: 'Vallenar', region: 'Atacama' },
  { name: 'Huasco', region: 'Atacama' },
  { name: 'Freirina', region: 'Atacama' },
  { name: 'Alto del Carmen', region: 'Atacama' },
  { name: 'Salamanca', region: 'Coquimbo' },
  { name: 'Los Vilos', region: 'Coquimbo' },
  { name: 'Illapel', region: 'Coquimbo' },
  { name: 'Canela', region: 'Coquimbo' },
  { name: 'Vicuña', region: 'Coquimbo' },
  { name: 'Paiguano', region: 'Coquimbo' },
  { name: 'La Serena', region: 'Coquimbo' },
  { name: 'La Higuera', region: 'Coquimbo' },
  { name: 'Coquimbo', region: 'Coquimbo' },
  { name: 'Andacollo', region: 'Coquimbo' },
  { name: 'Río Hurtado', region: 'Coquimbo' },
  { name: 'Punitaqui', region: 'Coquimbo' },
  { name: 'Ovalle', region: 'Coquimbo' },
  { name: 'Monte Patria', region: 'Coquimbo' },
  { name: 'Combarbalá', region: 'Coquimbo' },
  { name: 'Isla de Pascua', region: 'Valparaíso' },
  { name: 'San Esteban', region: 'Valparaíso' },
  { name: 'Rinconada', region: 'Valparaíso' },
  { name: 'Los Andes', region: 'Valparaíso' },
  { name: 'Calle Larga', region: 'Valparaíso' },
  { name: 'Villa Alemana', region: 'Valparaíso' },
  { name: 'Quilpué', region: 'Valparaíso' },
  { name: 'Limache', region: 'Valparaíso' },
  { name: 'Olmué', region: 'Valparaíso' },
  { name: 'Zapallar', region: 'Valparaíso' },
  { name: 'Petorca', region: 'Valparaíso' },
  { name: 'Papudo', region: 'Valparaíso' },
  { name: 'La Ligua', region: 'Valparaíso' },
  { name: 'Cabildo', region: 'Valparaíso' },
  { name: 'Quillota', region: 'Valparaíso' },
  { name: 'Nogales', region: 'Valparaíso' },
  { name: 'La Cruz', region: 'Valparaíso' },
  { name: 'La Calera', region: 'Valparaíso' },
  { name: 'Hijuelas', region: 'Valparaíso' },
  { name: 'Santo Domingo', region: 'Valparaíso' },
  { name: 'San Antonio', region: 'Valparaíso' },
  { name: 'El Tabo', region: 'Valparaíso' },
  { name: 'El Quisco', region: 'Valparaíso' },
  { name: 'Cartagena', region: 'Valparaíso' },
  { name: 'Algarrobo', region: 'Valparaíso' },
  { name: 'Santa María', region: 'Valparaíso' },
  { name: 'San Felipe', region: 'Valparaíso' },
  { name: 'Putaendo', region: 'Valparaíso' },
  { name: 'Panquehue', region: 'Valparaíso' },
  { name: 'Llaillay', region: 'Valparaíso' },
  { name: 'Catemu', region: 'Valparaíso' },
  { name: 'Viña del Mar', region: 'Valparaíso' },
  { name: 'Valparaíso', region: 'Valparaíso' },
  { name: 'Quintero', region: 'Valparaíso' },
  { name: 'Puchuncaví', region: 'Valparaíso' },
  { name: 'Concón', region: 'Valparaíso' },
  { name: 'Juan Fernández', region: 'Valparaíso' },
  { name: 'Casablanca', region: 'Valparaíso' },
  { name: 'Tiltil', region: 'Metropolitana' },
  { name: 'Lampa', region: 'Metropolitana' },
  { name: 'Colina', region: 'Metropolitana' },
  { name: 'San José de Maipo', region: 'Metropolitana' },
  { name: 'Puente Alto', region: 'Metropolitana' },
  { name: 'Pirque', region: 'Metropolitana' },
  { name: 'San Bernardo', region: 'Metropolitana' },
  { name: 'Paine', region: 'Metropolitana' },
  { name: 'Calera de Tango', region: 'Metropolitana' },
  { name: 'Buin', region: 'Metropolitana' },
  { name: 'San Pedro', region: 'Metropolitana' },
  { name: 'Melipilla', region: 'Metropolitana' },
  { name: 'María Pinto', region: 'Metropolitana' },
  { name: 'Curacaví', region: 'Metropolitana' },
  { name: 'Alhué', region: 'Metropolitana' },
  { name: 'Vitacura', region: 'Metropolitana' },
  { name: 'Santiago', region: 'Metropolitana' },
  { name: 'San Ramón', region: 'Metropolitana' },
  { name: 'San Miguel', region: 'Metropolitana' },
  { name: 'San Joaquín', region: 'Metropolitana' },
  { name: 'Renca', region: 'Metropolitana' },
  { name: 'Recoleta', region: 'Metropolitana' },
  { name: 'Quinta Normal', region: 'Metropolitana' },
  { name: 'Quilicura', region: 'Metropolitana' },
  { name: 'Pudahuel', region: 'Metropolitana' },
  { name: 'Providencia', region: 'Metropolitana' },
  { name: 'Peñalolén', region: 'Metropolitana' },
  { name: 'Pedro Aguirre Cerda', region: 'Metropolitana' },
  { name: 'Ñuñoa', region: 'Metropolitana' },
  { name: 'Maipú', region: 'Metropolitana' },
  { name: 'Macul', region: 'Metropolitana' },
  { name: 'Lo Prado', region: 'Metropolitana' },
  { name: 'Lo Espejo', region: 'Metropolitana' },
  { name: 'Lo Barnechea', region: 'Metropolitana' },
  { name: 'Las Condes', region: 'Metropolitana' },
  { name: 'La Reina', region: 'Metropolitana' },
  { name: 'La Pintana', region: 'Metropolitana' },
  { name: 'La Granja', region: 'Metropolitana' },
  { name: 'La Florida', region: 'Metropolitana' },
  { name: 'La Cisterna', region: 'Metropolitana' },
  { name: 'Independencia', region: 'Metropolitana' },
  { name: 'Huechuraba', region: 'Metropolitana' },
  { name: 'Estación Central', region: 'Metropolitana' },
  { name: 'El Bosque', region: 'Metropolitana' },
  { name: 'Conchalí', region: 'Metropolitana' },
  { name: 'Cerro Navia', region: 'Metropolitana' },
  { name: 'Cerrillos', region: 'Metropolitana' },
  { name: 'Talagante', region: 'Metropolitana' },
  { name: 'Peñaflor', region: 'Metropolitana' },
  { name: 'Padre Hurtado', region: 'Metropolitana' },
  { name: 'Isla de Maipo', region: 'Metropolitana' },
  { name: 'El Monte', region: 'Metropolitana' },
  { name: 'San Vicente', region: "O'Higgins" },
  { name: 'Requínoa', region: "O'Higgins" },
  { name: 'Rengo', region: "O'Higgins" },
  { name: 'Rancagua', region: "O'Higgins" },
  { name: 'Quinta de Tilcoco', region: "O'Higgins" },
  { name: 'Pichidegua', region: "O'Higgins" },
  { name: 'Peumo', region: "O'Higgins" },
  { name: 'Olivar', region: "O'Higgins" },
  { name: 'Mostazal', region: "O'Higgins" },
  { name: 'Malloa', region: "O'Higgins" },
  { name: 'Machalí', region: "O'Higgins" },
  { name: 'Las Cabras', region: "O'Higgins" },
  { name: 'Graneros', region: "O'Higgins" },
  { name: 'Doñihue', region: "O'Higgins" },
  { name: 'Coltauco', region: "O'Higgins" },
  { name: 'Coinco', region: "O'Higgins" },
  { name: 'Codegua', region: "O'Higgins" },
  { name: 'Pichilemu', region: "O'Higgins" },
  { name: 'Paredones', region: "O'Higgins" },
  { name: 'Navidad', region: "O'Higgins" },
  { name: 'Marchihue', region: "O'Higgins" },
  { name: 'Litueche', region: "O'Higgins" },
  { name: 'La Estrella', region: "O'Higgins" },
  { name: 'Santa Cruz', region: "O'Higgins" },
  { name: 'San Fernando', region: "O'Higgins" },
  { name: 'Pumanque', region: "O'Higgins" },
  { name: 'Placilla', region: "O'Higgins" },
  { name: 'Peralillo', region: "O'Higgins" },
  { name: 'Palmilla', region: "O'Higgins" },
  { name: 'Nancagua', region: "O'Higgins" },
  { name: 'Lolol', region: "O'Higgins" },
  { name: 'Chimbarongo', region: "O'Higgins" },
  { name: 'Chépica', region: "O'Higgins" },
  { name: 'Pelluhue', region: 'Maule' },
  { name: 'Chanco', region: 'Maule' },
  { name: 'Cauquenes', region: 'Maule' },
  { name: 'Vichuquén', region: 'Maule' },
  { name: 'Teno', region: 'Maule' },
  { name: 'Sagrada Familia', region: 'Maule' },
  { name: 'Romeral', region: 'Maule' },
  { name: 'Rauco', region: 'Maule' },
  { name: 'Molina', region: 'Maule' },
  { name: 'Licantén', region: 'Maule' },
  { name: 'Hualañé', region: 'Maule' },
  { name: 'Curicó', region: 'Maule' },
  { name: 'Yerbas Buenas', region: 'Maule' },
  { name: 'Villa Alegre', region: 'Maule' },
  { name: 'San Javier', region: 'Maule' },
  { name: 'Retiro', region: 'Maule' },
  { name: 'Parral', region: 'Maule' },
  { name: 'Longaví', region: 'Maule' },
  { name: 'Linares', region: 'Maule' },
  { name: 'Colbún', region: 'Maule' },
  { name: 'Talca', region: 'Maule' },
  { name: 'San Rafael', region: 'Maule' },
  { name: 'San Clemente', region: 'Maule' },
  { name: 'Río Claro', region: 'Maule' },
  { name: 'Pencahue', region: 'Maule' },
  { name: 'Pelarco', region: 'Maule' },
  { name: 'Maule', region: 'Maule' },
  { name: 'Empedrado', region: 'Maule' },
  { name: 'Curepto', region: 'Maule' },
  { name: 'Constitución', region: 'Maule' },
  { name: 'Tirúa', region: 'Biobío' },
  { name: 'Los Álamos', region: 'Biobío' },
  { name: 'Lebu', region: 'Biobío' },
  { name: 'Curanilahue', region: 'Biobío' },
  { name: 'Contulmo', region: 'Biobío' },
  { name: 'Cañete', region: 'Biobío' },
  { name: 'Arauco', region: 'Biobío' },
  { name: 'Yumbel', region: 'Biobío' },
  { name: 'Tucapel', region: 'Biobío' },
  { name: 'Santa Bárbara', region: 'Biobío' },
  { name: 'San Rosendo', region: 'Biobío' },
  { name: 'Quilleco', region: 'Biobío' },
  { name: 'Quilaco', region: 'Biobío' },
  { name: 'Negrete', region: 'Biobío' },
  { name: 'Nacimiento', region: 'Biobío' },
  { name: 'Mulchén', region: 'Biobío' },
  { name: 'Los Ángeles', region: 'Biobío' },
  { name: 'Laja', region: 'Biobío' },
  { name: 'Cabrero', region: 'Biobío' },
  { name: 'Antuco', region: 'Biobío' },
  { name: 'Alto Biobío', region: 'Biobío' },
  { name: 'Tomé', region: 'Biobío' },
  { name: 'Talcahuano', region: 'Biobío' },
  { name: 'Santa Juana', region: 'Biobío' },
  { name: 'San Pedro de la Paz', region: 'Biobío' },
  { name: 'Penco', region: 'Biobío' },
  { name: 'Lota', region: 'Biobío' },
  { name: 'Hualqui', region: 'Biobío' },
  { name: 'Hualpén', region: 'Biobío' },
  { name: 'Florida', region: 'Biobío' },
  { name: 'Coronel', region: 'Biobío' },
  { name: 'Concepción', region: 'Biobío' },
  { name: 'Chiguayante', region: 'Biobío' },
  { name: 'Yungay', region: 'Biobío' },
  { name: 'Treguaco', region: 'Biobío' },
  { name: 'San Nicolás', region: 'Biobío' },
  { name: 'San Ignacio', region: 'Biobío' },
  { name: 'San Fabián', region: 'Biobío' },
  { name: 'San Carlos', region: 'Biobío' },
  { name: 'Ránquil', region: 'Biobío' },
  { name: 'Quirihue', region: 'Biobío' },
  { name: 'Quillón', region: 'Biobío' },
  { name: 'Portezuelo', region: 'Biobío' },
  { name: 'Pinto', region: 'Biobío' },
  { name: 'Pemuco', region: 'Biobío' },
  { name: 'Ñiquén', region: 'Biobío' },
  { name: 'Ninhue', region: 'Biobío' },
  { name: 'El Carmen', region: 'Biobío' },
  { name: 'Coihueco', region: 'Biobío' },
  { name: 'Coelemu', region: 'Biobío' },
  { name: 'Cobquecura', region: 'Biobío' },
  { name: 'Chillán Viejo', region: 'Biobío' },
  { name: 'Chillán', region: 'Biobío' },
  { name: 'Bulnes', region: 'Biobío' },
  { name: 'Villarrica', region: 'Araucanía' },
  { name: 'Vilcún', region: 'Araucanía' },
  { name: 'Toltén', region: 'Araucanía' },
  { name: 'Teodoro Schmidt', region: 'Araucanía' },
  { name: 'Temuco', region: 'Araucanía' },
  { name: 'Saavedra', region: 'Araucanía' },
  { name: 'Pucón', region: 'Araucanía' },
  { name: 'Pitrufquén', region: 'Araucanía' },
  { name: 'Perquenco', region: 'Araucanía' },
  { name: 'Padre Las Casas', region: 'Araucanía' },
  { name: 'Nueva Imperial', region: 'Araucanía' },
  { name: 'Melipeuco', region: 'Araucanía' },
  { name: 'Loncoche', region: 'Araucanía' },
  { name: 'Lautaro', region: 'Araucanía' },
  { name: 'Gorbea', region: 'Araucanía' },
  { name: 'Galvarino', region: 'Araucanía' },
  { name: 'Freire', region: 'Araucanía' },
  { name: 'Curarrehue', region: 'Araucanía' },
  { name: 'Cunco', region: 'Araucanía' },
  { name: 'Cholchol', region: 'Araucanía' },
  { name: 'Carahue', region: 'Araucanía' },
  { name: 'Victoria', region: 'Araucanía' },
  { name: 'Traiguén', region: 'Araucanía' },
  { name: 'Renaico', region: 'Araucanía' },
  { name: 'Purén', region: 'Araucanía' },
  { name: 'Lumaco', region: 'Araucanía' },
  { name: 'Los Sauces', region: 'Araucanía' },
  { name: 'Lonquimay', region: 'Araucanía' },
  { name: 'Ercilla', region: 'Araucanía' },
  { name: 'Curacautín', region: 'Araucanía' },
  { name: 'Collipulli', region: 'Araucanía' },
  { name: 'Angol', region: 'Araucanía' },
  { name: 'Río Bueno', region: 'Los Ríos' },
  { name: 'Lago Ranco', region: 'Los Ríos' },
  { name: 'La Unión', region: 'Los Ríos' },
  { name: 'Futrono', region: 'Los Ríos' },
  { name: 'Valdivia', region: 'Los Ríos' },
  { name: 'Panguipulli', region: 'Los Ríos' },
  { name: 'Paillaco', region: 'Los Ríos' },
  { name: 'San José de la Mariquina', region: 'Los Ríos' },
  { name: 'Máfil', region: 'Los Ríos' },
  { name: 'Los Lagos', region: 'Los Ríos' },
  { name: 'Lanco', region: 'Los Ríos' },
  { name: 'Corral', region: 'Los Ríos' },
  { name: 'Quinchao', region: 'Los Lagos' },
  { name: 'Quemchi', region: 'Los Lagos' },
  { name: 'Quellón', region: 'Los Lagos' },
  { name: 'Queilén', region: 'Los Lagos' },
  { name: 'Puqueldón', region: 'Los Lagos' },
  { name: 'Dalcahue', region: 'Los Lagos' },
  { name: 'Curaco de Vélez', region: 'Los Lagos' },
  { name: 'Chonchi', region: 'Los Lagos' },
  { name: 'Castro', region: 'Los Lagos' },
  { name: 'Ancud', region: 'Los Lagos' },
  { name: 'Puerto Varas', region: 'Los Lagos' },
  { name: 'Puerto Montt', region: 'Los Lagos' },
  { name: 'Maullín', region: 'Los Lagos' },
  { name: 'Los Muermos', region: 'Los Lagos' },
  { name: 'Llanquihue', region: 'Los Lagos' },
  { name: 'Frutillar', region: 'Los Lagos' },
  { name: 'Fresia', region: 'Los Lagos' },
  { name: 'Cochamó', region: 'Los Lagos' },
  { name: 'Calbuco', region: 'Los Lagos' },
  { name: 'San Pablo', region: 'Los Lagos' },
  { name: 'San Juan de la Costa', region: 'Los Lagos' },
  { name: 'Río Negro', region: 'Los Lagos' },
  { name: 'Puyehue', region: 'Los Lagos' },
  { name: 'Purranque', region: 'Los Lagos' },
  { name: 'Puerto Octay', region: 'Los Lagos' },
  { name: 'Osorno', region: 'Los Lagos' },
  { name: 'Palena', region: 'Los Lagos' },
  { name: 'Hualaihué', region: 'Los Lagos' },
  { name: 'Futaleufú', region: 'Los Lagos' },
  { name: 'Chaitén', region: 'Los Lagos' },
  { name: 'Guaitecas', region: 'Aisén' },
  { name: 'Cisnes', region: 'Aisén' },
  { name: 'Aisén', region: 'Aisén' },
  { name: 'Tortel', region: 'Aisén' },
  { name: "O'Higgins", region: 'Aisén' },
  { name: 'Cochrane', region: 'Aisén' },
  { name: 'Lago Verde', region: 'Aisén' },
  { name: 'Coihaique', region: 'Aisén' },
  { name: 'Río Ibáñez', region: 'Aisén' },
  { name: 'Chile Chico', region: 'Aisén' },
  { name: 'Cabo de Hornos', region: 'Magallanes y Antártica Chilena' },
  { name: 'Antártica', region: 'Magallanes y Antártica Chilena' },
  { name: 'San Gregorio', region: 'Magallanes y Antártica Chilena' },
  { name: 'Río Verde', region: 'Magallanes y Antártica Chilena' },
  { name: 'Punta Arenas', region: 'Magallanes y Antártica Chilena' },
  { name: 'Laguna Blanca', region: 'Magallanes y Antártica Chilena' },
  { name: 'Timaukel', region: 'Magallanes y Antártica Chilena' },
  { name: 'Primavera', region: 'Magallanes y Antártica Chilena' },
  { name: 'Porvenir', region: 'Magallanes y Antártica Chilena' },
  { name: 'Torres del Paine', region: 'Magallanes y Antártica Chilena' },
  { name: 'Natales', region: 'Magallanes y Antártica Chilena' }
])
