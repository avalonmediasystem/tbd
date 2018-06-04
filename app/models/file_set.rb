# Copyright 2011-2018, The Trustees of Indiana University and Northwestern
# University. Additional copyright may be held by others, as reflected in
# the commit history.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ---  END LICENSE_HEADER BLOCK  ---

# Generated by hyrax:models:install
class FileSet < ActiveFedora::Base
  include ::Hyrax::FileSetBehavior

  directly_contains_one :structure, through: :files, type: ::RDF::URI('http://pcdm.org/use#IntermediateFile'), class_name: 'Hydra::PCDM::File'

  self.indexer = FileSetIndexer

  def build_structure
    super.tap do |file|
      file.file_format = ::RDF::URI.new("http://pcdm.org/file-format-types#StructuredText")
    end
  end

  def files_metadata
    files.collect { |f| { id: f.id, label: f.label.first, external_file_uri: f.external_file_uri.first } }
  end

  def to_solr(solr_doc = {})
    super(solr_doc).tap do |doc|
      doc['structure_tesim'] = structure.content unless structure.nil? || structure.content.blank?
    end
  end

end
