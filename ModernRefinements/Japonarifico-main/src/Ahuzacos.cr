class Anu
  macro gendered_noun(name, method_name, content, output)
    def {{method_name}}
      {{content}}
    
      {{output}}
    end
  end
  
  ## Anu Class
  gendered_noun self.neku(object, chat_adjective), "Anu #{object} #{chat_adjective} "
  gendered_noun self.inu(object, chat_adjective), "Inu #{object} #{chat_adjective} "
end

class Ana
  macro gendered_noun(name, method_name, content, output)
    def {{method_name}}
      {{content}}
    
      {{output}}
    end
  end
  
  ## Ana Class
  gendered_noun self.ana(object, adjective), "Ana #{object} #{adjective} "
  
  ### Feminine Japanese Loan Words
  gendered_noun self.neka(object, chat_adjective), "Anu #{object} #{chat_adjective} "
  gendered_noun self.ina(object, chat_adjective), "Ina #{object} #{chat_adjective} "
end

class Anos
  macro gendered_noun(name, method_name, content, output)
    def {{method_name}}
      {{content}}
    
      {{output}}
    end
  end
  
  ## Anos Class
  gendered_noun self.anos(object, adjective), "Anos #{object} #{adjective} "
  
  ### Neuter Japanese Loan Words
  gendered_noun self.nekos(object, chat_adjective), "Anu #{object} #{chat_adjective} "
  gendered_noun self.inos(object, chat_adjective), "Inu #{object} #{chat_adjective} "
end
