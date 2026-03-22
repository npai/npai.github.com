Jekyll::Hooks.register :site, :pre_render do |site, payload|
  payload["image_path"] = ->(path) {
    return path if path.nil? || path.empty?
    return path if path.start_with?("http://", "https://", "/")
    "/#{path}"
  }
end
