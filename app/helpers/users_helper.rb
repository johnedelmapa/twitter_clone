module UsersHelper
  def gravatar_for(user, size)
    #Generate the hex token
    gravatar_id = Digest::MD5::hexdigest(user.email)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "rounded-circle #{size}")
  end
end
