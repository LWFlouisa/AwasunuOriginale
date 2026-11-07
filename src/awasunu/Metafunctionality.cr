#############################################################################################################
#                                  Masculine Honorific Organized Directives                                 #
#############################################################################################################

module Samu
  module Cemotu
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotu
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Hikasu
  module Cemotu
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotu
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Sanu
  module Cemotu
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotu
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Chanu
  module Cemotu
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(directive)
        "#{directive}_moi"
      end

      def self.toi(directive)
        "#{directive}_toi"
      end

      def self.ils(directive)
        "#{directive}_ils"
      end

      def self.elles(directive)
        "#{directive}_elles"
      end

      def self.noi(directive)
        "#{directive}_noi"
      end
    end
  end

  module Numotu
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

#############################################################################################################
#                                      Feminine Honorific Organized Directives                              #
#############################################################################################################
module Sama
  module Cemota
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numota
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Hikasa
  module Cemota
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numota
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Sana
  module Cemota
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numota
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Chana
  module Cemota
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numota
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

#############################################################################################################
#                                      Machine Honorific Organized Directives                               #
#############################################################################################################
module Samos
  module Cemotos
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotos
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Hikasos
  module Cemota
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotos
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Sanos
  module Cemotos
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotos
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Chanos
  module Cemota
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotos
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end
