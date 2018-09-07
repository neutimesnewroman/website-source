module Jekyll
    module ExpandNestedVarialbeFilter
        def flatify(input)
            Liquid::Template.parse(input).render(@context)
        end
    end
end

Liquid::Template.register_filter(Jekyll::ExpandNestedVarialbeFilter)