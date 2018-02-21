module Gitlab
  module Ci
    module Pipeline
      module Expression
        class Lexeme
          def evaluate(**variables)
            raise NotImplementedError
          end

          def self.build(token)
            raise NotImplementedError
          end

          def self.scan(scanner)
            if scanner.scan(self::PATTERN)
              Expression::Token.new(scanner.matched, self)
            end
          end
        end
      end
    end
  end
end
