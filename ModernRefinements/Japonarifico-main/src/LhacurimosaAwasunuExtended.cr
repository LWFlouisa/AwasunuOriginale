macro metamodule(super_module, module_name, class_name, method_name, content)
  module {{super_module}}
    module {{module_name}}
      class {{class_name}}
        def {{method_name}}
          {{content}}
        end
      end
    end
  end
end

## Masculine Lexical Gender
metamodule Grammar, LexicalGender, Le, citrone(subject, verb), "Le citrone #{subject} #{verb}."
metamodule Grammar, LexicalGender, Le,   radis(subject, verb),   "Le radis #{subject} #{verb}."
metamodule Grammar, LexicalGender, Le,   verts(subject, verb),   "Le verts #{subject} #{verb}."

## Feminine Lexical Gender
metamodule Grammar, LexicalGender, La,          pomme(subject, verb),          "La pomme #{subject} #{verb}."
metamodule Grammar, LexicalGender, La,         banane(subject, verb),         "La banane #{subject} #{verb}."
metamodule Grammar, LexicalGender, La, pomme_de_terre(subject, verb), "La pomme de terre #{subject} #{verb}."

## Nueter Lexical Gender
metamodule Grammar, LexicalGender, L, aubergine(subject, verb), "L'aubergine #{subject} #{verb}."
