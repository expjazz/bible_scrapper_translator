class User
  attr_accessor :book, :chapter, :final_choice
  def initialize
    @chapter = ""
    @book = ""
    @final_choice = ""
  end

  def ask_book
    p 'Qual livro da bíblia você quer estudar'
    @book = gets.chomp
    @book
  end
  def chapter
    p 'Da lista apresentada, qual capítulo você quer ler?'
    p 'Digite igualzinho você vê na tela'
    @chapter = gets.chomp
    @chapter
  end

  def trans_or_detailed
    p 'Você quer uma transcrição ou uma lista dos principais pontos?'
    @final_choice = gets.chomp
    @final_choice
  end
end