require_dependency "phcmembers/application_controller"

module Phcmembers
  class Member::ProfilesController < ApplicationController

    # Include Core Helpers, Security & Action Filters
    include Phccorehelpers::PhcpluginsproHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_member_profile, only: [:show, :edit, :update, :destroy]
    layout "phcmembers/member_profile", :only => [ :show ]

    # INDEX - Member Profile
    def index
      @member_profiles = Member::Profile.where(org_id: current_user.org_id)
    end

    # DETAILED PROFILE - Member Profile
    def show
      @member_profile = Member::Profile.find(params[:id])
      @member_profile_versions = Phcmembers::ProfileVersions.where(item_id: @member_profile, item_type: 'Phcmembers::Member::Profile')
    end

    # NEW FORM - Member Profile
    def new
      @member_profile = Member::Profile.new
    end

    # EDIT FORM - Member Profile
    def edit
    end

    # POST - Member Profile
    def create
      @member_profile = Member::Profile.new(member_profile_params)
      @member_profile.user_id = current_user.id
      @member_profile.org_id = current_user.org_id
      if @member_profile.save
        redirect_to member_profiles_url, notice: 'Profile was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT - Member Profile
    def update
      if @member_profile.update(member_profile_params)
        redirect_to member_profiles_url, notice: 'Profile was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE - Member Profile
    def destroy
      @member_profile.destroy
      redirect_to member_profiles_url, notice: 'Profile was successfully destroyed.'
    end

    private

    # Common Callbacks
    def set_member_profile
      @member_profile = Member::Profile.find(params[:id])
    end

    # Whitelist
    def member_profile_params
      params.require(:member_profile).permit(:member_firstname, :member_lastname, :member_title, :member_email, :member_phone, :member_notes, :slug, :user_id, :org_id)
    end

  end
end
