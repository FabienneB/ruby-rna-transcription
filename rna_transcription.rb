class Complement
  def self.of_dna(nucleotide_chain)
    array_of_nucleotides = []
    nucleotide_chain.each_char do |c|
      array_of_nucleotides.push(rna_translation(c))
    end
    array_of_nucleotides.join
  end

  def self.rna_translation(char)
    case char
    when 'G' then 'C'
    when 'C' then 'G'
    when 'T' then 'A'
    when 'A' then 'U'
    end
  end
 
end