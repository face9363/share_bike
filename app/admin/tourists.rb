ActiveAdmin.register Tourist do
  permit_params :name, :authenticated, :nickname, :phmnumber, :void
  actions :all, except: [:destroy ]

  index do
    id_column
    column :name
    column :nickname
    column :email
    column :created_at
    actions
  end

  filter :phmnumber
  filter :email
  filter :nikname
  filter :name
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :nickname
      f.input :phmnumber
      f.input :authenticated
      f.input :void
    end
    f.actions
  end
end