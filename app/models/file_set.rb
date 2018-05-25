# Generated by hyrax:models:install
class FileSet < ActiveFedora::Base
  include ::Hyrax::FileSetBehavior

  directly_contains_one :structure, through: :files, type: ::RDF::URI('http://pcdm.org/use#IntermediateFile'), class_name: 'Hydra::PCDM::File'

  def build_structure
    super.tap do |file|
      file.file_format = ::RDF::URI.new("http://pcdm.org/file-format-types#StructuredText")
    end
  end
end
