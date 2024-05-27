# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # POS language code. Language code:   * `deu` - German   * `fra` - French   *
  # `bul` - Bulgarian   * `hrv` - Croatian   * `ces` - Czech   * `dan` - Danish
  #  * `fin` - Finnish   * `eng` - English   * `ell` - Greek   * `zho` - Chinese
  #   * `hun` - Hungarian   * `ita` - Italian   * `ltz` - Luxembourgish   *
  # `msa` - Malay   * `nld` - Dutch   * `nob` - Norwegian, Bokmal   * `urd` -
  # Urdu   * `pol` - Polish   * `por` - Portuguese   * `ron` - Romanian   *
  # `rus` - Russian   * `slk` - Slovak   * `slv` - Slovenian   * `spa` - Spanish
  #   * `swe` - Swedish   * `tur` - Turkish   * `tha` - Thai   * `fil` -
  # Filipino   * `est` - Estonian   * `lav` - Latvian   * `lit` - Lithuanian
  class CardDetailsResponseLocalPOSLanguageCodeEnum
    CARD_DETAILS_RESPONSE_LOCAL_POS_LANGUAGE_CODE_ENUM = [
      # TODO: Write general description for DEU
      DEU = 'deu'.freeze,

      # TODO: Write general description for FRA
      FRA = 'fra'.freeze,

      # TODO: Write general description for BUL
      BUL = 'bul'.freeze,

      # TODO: Write general description for HRV
      HRV = 'hrv'.freeze,

      # TODO: Write general description for CES
      CES = 'ces'.freeze,

      # TODO: Write general description for DAN
      DAN = 'dan'.freeze,

      # TODO: Write general description for FIN
      FIN = 'fin'.freeze,

      # TODO: Write general description for ENG
      ENG = 'eng'.freeze,

      # TODO: Write general description for ELL
      ELL = 'ell'.freeze,

      # TODO: Write general description for ZHO
      ZHO = 'zho'.freeze,

      # TODO: Write general description for HUN
      HUN = 'hun'.freeze,

      # TODO: Write general description for ITA
      ITA = 'ita'.freeze,

      # TODO: Write general description for LTZ
      LTZ = 'ltz'.freeze,

      # TODO: Write general description for MSA
      MSA = 'msa'.freeze,

      # TODO: Write general description for NLD
      NLD = 'nld'.freeze,

      # TODO: Write general description for NOB
      NOB = 'nob'.freeze,

      # TODO: Write general description for URD
      URD = 'urd'.freeze,

      # TODO: Write general description for POL
      POL = 'pol'.freeze,

      # TODO: Write general description for POR
      POR = 'por'.freeze,

      # TODO: Write general description for RON
      RON = 'ron'.freeze,

      # TODO: Write general description for RUS
      RUS = 'rus'.freeze,

      # TODO: Write general description for SLK
      SLK = 'slk'.freeze,

      # TODO: Write general description for SLV
      SLV = 'slv'.freeze,

      # TODO: Write general description for SPA
      SPA = 'spa'.freeze,

      # TODO: Write general description for SWE
      SWE = 'swe'.freeze,

      # TODO: Write general description for TUR
      TUR = 'tur'.freeze,

      # TODO: Write general description for THA
      THA = 'tha'.freeze,

      # TODO: Write general description for FIL
      FIL = 'fil'.freeze,

      # TODO: Write general description for EST
      EST = 'est'.freeze,

      # TODO: Write general description for LAV
      LAV = 'lav'.freeze,

      # TODO: Write general description for LIT
      LIT = 'lit'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CARD_DETAILS_RESPONSE_LOCAL_POS_LANGUAGE_CODE_ENUM.include?(value)
    end
  end
end
