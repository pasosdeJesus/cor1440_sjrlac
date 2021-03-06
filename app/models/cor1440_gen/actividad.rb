# encoding: UTF-8

require 'cor1440_gen/concerns/models/actividad'

module Cor1440Gen
  class Actividad < ActiveRecord::Base
    include Cor1440Gen::Concerns::Models::Actividad

    has_many :actividad_poa, dependent: :delete_all,
      class_name: '::ActividadPoa', foreign_key: 'actividad_id'
    has_many :poa, through: :actividad_poa,
      class_name: '::Poa'

  end
end
