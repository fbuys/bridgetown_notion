# frozen_string_literal: true

module BridgetownNotion
  module Parsers
    class BlockParser
      def self.parse(block)
        for_each_block_type do |block_type|
          content = block.dig(block_type, "rich_text", 0, "text", "content")
          return [block_type, content] if content
        end
        []
      end

      private_class_method def self.for_each_block_type
        pattern = %r{(?<block_type>\w+)(?!.*/)_markdown_generator.rb}
        markdown_generator_files = Dir["./**/markdown_generators/**/*_markdown_generator.rb"]
        markdown_generator_files.each do |file|
          yield file.match(pattern)[:block_type].to_s
        end
      end
    end
  end
end
