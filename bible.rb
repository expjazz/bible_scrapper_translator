class Bible
  attr_accessor :books
  def initialize
    @books = ["Genesis", "Exodo", 'Levitico','Números', 
'Deuteronomio', 'Josué', 'Juízes', 'Rute', 'Samuel 1', 'Samuel 2', 
'Reis 1','Reis 2', 'Crônicas 1', 'Crônicas 2', 'Esdras', 
'Neemias', 'Ester', "Jó", 'Salmos',
'Provérbios', 'Eclesiastes', 'Cantares de Salomão',
'Isaias', 'Jeremias', 'Lamentações', 'Ezequiel',
'Daniel', 'Oseias', 'Joel', 'Amós', 'Obadias', 'Jonas',
'Mica', 'Naum', 'Habacuque', 'Zefanias', 'Haggar', 'Zacarias',
'Malaquias', 'Matheus', 'Marcos', 'Lucas', 'João', 'Atos',
'Romanos', 'Corintos 1', 'Corintos 2', 'Galatas', 'Efeso',
'Filipenses', 'Colossenses', 'Tessalonicences 1', 'Tessalonicences 2',
 'Timoteo 1', 'Timoteo 2', 'Tito', 'Filemon',
'Hebreus', 'Tiago', 'Pedro 1', 'Pedro 2', 'João 1', 'João 2', 'João 3', 'Judas',
'Apocalipse']
  end
  
  def bible_book_num(book)
    if @books.include?(book) == false
      p 'Livro inválido. Confira se houve erro ao digitar.'
      false 
    else
      index = @books.find_index(book)
      page_num = index - 0
      page_num += 137
      page_num
    end
  end
end