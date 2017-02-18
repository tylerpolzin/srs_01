class TaskDatatable < AjaxDatatablesRails::Base

  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['tasks.task_type', 'tasks.created_at']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['tasks.task_type', 'tasks.task_name']
  end

  private

  def data
    records.map do |record|
      [
        record.task_name,
        record.task_type,
        record.status,
        record.notes
      ]
    end
  end

  def get_raw_records
    Task.all
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
