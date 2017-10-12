# encoding: UTF-8

class Actividadpf < ActiveRecord::Base
  belongs_to :proyectofinanciero, 
    class_name: 'Cor1440Gen::Proyectofinanciero',
    foreign_key: 'proyectofinanciero_id'
  belongs_to :resultadopf, 
    class_name: '::Resultadopf',
    foreign_key: 'resultadopf_id'

  has_many :actividad_actividadpf, dependent: :delete_all,
    class_name: '::ActividadActividadpf', foreign_key: 'actividadpf_id'
  has_many :actividad, through: :actividad_actividadpf,
    class_name: 'Cor1440Gen::Actividad'

  validates :nombrecorto, presence: true, length: {maximum: 15}
  validates :titulo, length: {maximum: 255}
  validates :descripcion, length: {maximum: 5000}

  def presenta_nombre
    nombrecorto + ":" + titulo
  end
end
