# encoding: UTF-8
require_dependency "cor1440_gen/concerns/controllers/informes_controller"

module Cor1440Gen
  class InformesController < ApplicationController
    include Cor1440Gen::Concerns::Controllers::InformesController
    
    def informe_params
      r = params.require(:informe).permit(
        :titulo, :filtrofechaini, :filtrofechafin, 
        :filtroproyecto, 
        :filtroactividadarea, #:filtropoa, 
        :filtroproyectofinanciero, 
        :columnanombre, :columnatipo, 
        :columnaobjetivo, :columnaproyecto, :columnapoblacion, 
        :recomendaciones, :avances, :logros, :dificultades,
        :contextointerno, :contextoexterno
      )
      return r
    end

  end
end
