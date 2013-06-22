Tag.destroy_all
['Ciência e Tecnologia',
'Defesa do Consumidor',
'Educação',
'Saúde e Drogas',
'Esporte, Lazer e Cultura',
'Megaeventos',
'Obras Públicas e infraestrutura',
'Transparência e Participação',
'Crianças e adolescentes',
'Eleições',
'Indústria, Comércio e Emprego',
'Meio Ambiente e Direito dos Animais',
'Administração Pública',
'Transporte e Trânsito',
'Direitos Indígenas',
'Liberdade de Expressão',
'Igualdade de gêneros',
'Direitos Humanos',
'Reforma Política',
'Segurança Pública'].each {|name| Tag.create!(name: name)}

Motive.destroy_all
