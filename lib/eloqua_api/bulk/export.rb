module Eloqua
  module Export
    def define_export(export)
      post("contact/export", export)
    end
    
    def retrieve_export(export_uri, options={})
      options[:page] ||= 1
      options[:pageSize] ||= 50000

      get("%s/data" % export_uri, options)
    end
  end
end
