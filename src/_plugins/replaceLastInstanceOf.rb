module Jekyll
  module ReplaceLastInstanceOf
    def replace_last_instance_of(input, search_string, replacement_string)

=begin
    		@author:     Vincent V. Toscano
			@version:    1.0
			@date:       2/3/18
			@time:       6:23 PM

			replace_last_instance_of --- Replaces last instance of substring (case sensitive)
			@usage	{{ page.content | replace_last_instance_of: 'search string', 'replacement string' }}

    		todo: Use sub to search for pattern (/i for case insensitive)
    		sub(pattern, replacement) → new_str

    		input.sub(/(.*)#{search_string}/i, replacement_string)
=end


		new_str = input.reverse.sub(search_string.reverse, replacement_string.reverse).reverse
    end
  end
end

Liquid::Template.register_filter(Jekyll::ReplaceLastInstanceOf)