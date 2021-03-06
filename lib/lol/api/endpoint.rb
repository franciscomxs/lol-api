module LOL
  module API
    class Endpoint

      URL = {
        br: 'https://br.api.pvp.net',
        eune: 'https://eune.api.pvp.net',
        euw: 'https://euw.api.pvp.net/',
        jp: 'https://jp.api.pvp.net/',
        kr: 'https://kr.api.pvp.net/',
        lan: 'https://lan.api.pvp.net/',
        las: 'https://las.api.pvp.net/',
        na: 'https://na.api.pvp.net/',
        oce: 'https://oce.api.pvp.net/',
        ru: 'https://ru.api.pvp.net/',
        tr: 'https://tr.api.pvp.net/'
      }

      REGIONS_1 = {
        br: 'br',
        eune: 'eune',
        euw: 'euw',
        jp: 'jp',
        kr: 'kr',
        lan: 'lan',
        las: 'las',
        na: 'na',
        oce: 'oce',
        pbe: 'pbe',
        ru: 'ru',
        tr: 'tr'
      }

      REGIONS_2 = {
        br: 'br1',
        eune: 'eun1',
        euw: 'euw1',
        jp: 'jp1',
        kr: 'kr',
        lan: 'la1',
        las: 'la2',
        na: 'na1',
        oce: 'oc1',
        pbe: 'pbe1',
        ru: 'ru',
        tr: 'tr1'
      }

      def self.attrs(*attrs)
        attrs.each { |attr| self.send(:attr_accessor, attr) }
        keyword_arguments = attrs.map { |attr| "#{attr.to_s}:" }.join(', ')
        arguments = attrs.map { |attr| "#{attr.to_s}: #{attr}.to_s" }.join(', ')
        instance_variables = attrs.map { |attr| "@#{attr}" }.join(', ')
        values = attrs.map { |attr| attr }.join(', ')

        class_eval <<-EOF
          def self.call(#{keyword_arguments})
            new(#{arguments}).data
          end

          def initialize(#{keyword_arguments})
            #{instance_variables} = #{values}
          end
        EOF
      end

      def data
        LOL::API::Request.(url)
      end

      def url
        "#{base_url}#{endpoint}"
      end

      def base_url
        URL[region]
      end

      def normalized_region
        if /ChampionMastery|CurrentGame/.match(self.class.to_s)
          REGIONS_2[region]
        else
          REGIONS_1[region]
        end
      end

      def params
        { api_key: LOL::API.configuration.api_key }
      end

      def query
        URI.encode_www_form(params)
      end
    end
  end
end
