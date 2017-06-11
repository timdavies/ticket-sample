# Additional helper methods for forms
module FormsHelper
  # Translates enum values and returns them in the correct format for a select.
  def translated_options_from_enum(values, prefix)
    values.keys.map do |value|
      [I18n.t("#{prefix}.#{value}"), value]
    end
  end
end
