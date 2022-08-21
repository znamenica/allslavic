# frozen_string_literal: true

module TagIds
   extend ActiveSupport::Concern

   included do
      scope :by_tags, -> (tag_names_in) do
          tag_names = tag_names_in.is_a?(Array) && tag_names_in || tag_names_in.split(",")

          where(tag_ids: Tag.by_name(tag_names).select("array_agg(tags.id)"))
       end
   end

   def tags
      Tag.where(id: tag_ids)
   end

   def tags= tags_in
      self.tag_ids =
         case tags_in[0]
         when String, Integer
            Tag.by_name(tags_in)
         else
            tag_names = tags_in.map?(&:name)
            Tag.by_name(tag_names)
         end.select(:id).pluck(:id)
   end
end
