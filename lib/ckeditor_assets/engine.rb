module CkeditorAssets
  class Engine < ::Rails::Engine
    isolate_namespace CkeditorAssets

    rake_tasks do
      load CkeditorAssets.root_path.join('lib/tasks/ckeditor_assets_tasks.rake')

      if Rake::Task.task_defined?('assets:precompile')
        Rake::Task['assets:precompile'].enhance do
          Rake::Task['ckeditor_assets:nondigest'].invoke
        end
      end
    end
  end
end
