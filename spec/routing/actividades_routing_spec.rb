module Cor1440Gen
  RSpec.describe ActividadesController, :type => :routing do
    routes { Cor1440Gen::Engine.routes }
    describe "routing" do

      it "routes to #index" do
        skip
        expect(:get => "/actividades").to route_to("sip/actividades#index")
      end

      it "routes to #new" do
        skip
        expect(:get => "/actividades/nueva").to route_to("sip/actividades#new")
      end

      it "routes to #show" do
        skip
        expect(:get => "/actividades/1").to route_to("sip/actividades#show", :id => "1")
      end

      it "routes to #edit" do
        skip
        expect(:get => "/actividades/1/edita").to route_to("sip/actividades#edit", :id => "1")
      end

      it "routes to #create" do
        skip
        expect(:post => "/actividades").to route_to("sip/actividades#create")
      end

      it "routes to #update" do
        skip
        expect(:put => "/actividades/1").to route_to("sip/actividades#update", :id => "1")
      end

      it "routes to #destroy" do
        skip
        expect(:delete => "/actividades/1").to route_to("sip/actividades#destroy", :id => "1")
      end

    end
  end
end
