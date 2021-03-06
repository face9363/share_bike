ActiveAdmin.register Bike do
  permit_params :vehicle_num, :security_area, :security_num, :name, :details, :void, :pass
  actions :all, except: [:destroy, :new ]

  index do
    id_column
    column :name
    column :user
    column :vehicle_num
    column :security_num
    column :created_at
    actions
  end

  filter :name
  filter :user
  filter :vehicle_num
  filter :security_num

  form do |f|
    f.inputs do
      f.input :name
      f.input :vehicle_num
      f.input :security_num
      f.input :details
      f.input :void
    end
    f.actions
  end
end