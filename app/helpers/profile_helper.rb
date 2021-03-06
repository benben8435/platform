# encoding: UTF-8
module ProfileHelper
  def show_authority(authority)
    case authority
    when 0
      return '用户'
    when 1
      return '管理员'
    when 2
      return '超级管理员'
    end
  end

  def change_authority?
    if current_user.authority == 2
      true
    else false
    end
  end

  def delete_authorized(user)
    if current_user.authority > user.authority
      false
    else
      true
    end
  end
end
