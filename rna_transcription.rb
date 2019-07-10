class Complement
  def self.of_dna(nucleotide_chain) 
    return "" if nucleotide_chain =~ /[^AGTC]/

    nucleotide_chain.tr('GCTA', 'CGAU')
    # nucleotide_chain.chars.each_with_object([]) {|char,arr| arr.push rna_translation(char)}.join
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