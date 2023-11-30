ActiveAdmin.register Job do
  permit_params :id, :name, :desc, :status, :attempt, :err

  index do
    selectable_column
    id_column
    column :name
    column :status
    column :attempt
    column :created_at
    actions
  end

  filter :name
  filter :status
  filter :attempt

  form do |f|
    f.inputs do
      %i(name desc status attempt err).each do |field|
        f.input field
      end
    end
    f.actions
  end

end
