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

# Generated via
#  `rails generate hyrax:work AudiovisualWork`
module Hyrax
  class AudiovisualWorkPresenter < Hyrax::WorkShowPresenter
    include DisplaysIIIF
    Hyrax::MemberPresenterFactory.file_presenter_class = Hyrax::AVFileSetPresenter

    delegate :date_issued,
             :abstract, :physical_description, :genre,
             :topical_subject, :temporal_subject, :geographic_subject, :permalink,
             :bibliographic_id, :local, :oclc, :lccn, :issue_number, :matrix_number, :music_publisher,
             :video_recording_identifier, :table_of_contents, :terms_of_use,
             to: :solr_document

    # These two delegates will probably need to change to real methods as part of
    # https://github.com/samvera-labs/avalon-bundle/issues/119
    delegate :related_item, to: :solr_document
    delegate :note, to: :solr_document

    def manifest
      iiif_metadata_fields = [
        :title, :creator, :rights_statement, :date_issued, :date_created, :contributor, :publisher, :abstract,
        :physical_description, :language, :genre, :topical_subject, :temporal_subject, :geographic_subject,
        :permalink, :related_item, :bibliographic_id, :local, :oclc, :lccn, :issue_number, :matrix_number,
        :music_publisher, :video_recording_identifier, :table_of_contents, :note, :license, :terms_of_use
      ]

      metadata = []
      iiif_metadata_fields.each do |field|
        metadata << {
          'label' => I18n.t("simple_form.labels.audiovisual_work.#{field}"),
          'value' => Array.wrap(send(field))
        }
      end
      metadata
    end
  end
end
