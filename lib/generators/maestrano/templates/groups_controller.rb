class Maestrano::Account::GroupsController < Maestrano::Rails::WebHookController
  
  # DELETE /maestrano/account/groups/cld-1/:tenant
  # Delete an entire group
  def destroy
    group_uid = params[:id]
    tenant = params[:tenant]
    
    # Perform deletion steps here
    # --
    # If you need to perform a final checkout
    # then you can call Maestrano::Account::Bill.create({.. final checkout details ..})
    # --
    # If Maestrano.param('sso.creation_mode') is set to virtual
    # then you might want to delete/cancel/block all users under
    # that group
    # --
    # E.g:
    # organization = Organization.find_by_tenant_and_uid(tenant, group_uid)
    #
    # amount_cents = organization.calculate_total_due_remaining
    # Maestrano::Account::Bill.create({
    #   group_id: group_uid, 
    #   price_cents: amount_cents, 
    #   description: "Final Payout"
    # })
    # 
    # if Maestrano.param('sso.creation_mode') == 'virtual'
    #   organization.members.where(provider:'maestrano').each do |user|
    #   user.destroy
    # end
    #
    # organization.destroy
    # render json: {success: true}
    #
  end
end