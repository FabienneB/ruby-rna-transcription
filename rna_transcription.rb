class Complement
  def self.of_dna(nucleotide_chain) 
    return "" if nucleotide_chain =~ /[^AGTC]/
    nucleotide_chain.tr('GCTA', 'CGAU')
  end

  # Other way to do it : 
  
  # def self.of_dna(nucleotide_chain) 
  #   dna_array = nucleotide_chain.chars
  #   rna_array = nucl_array.each_with_object([]) { |char,arr| arr.push rna_translation(char) }
  #   rna_array.join
  # end

  # def self.rna_translation(char)
  #   case char
  #   when 'G' then 'C'
  #   when 'C' then 'G'
  #   when 'T' then 'A'
  #   when 'A' then 'U'
  #   end
  # end
end 