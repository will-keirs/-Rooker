class Dev < ApplicationRecord
  has_many :matches
  has_many :missions, through: :matches
  has_many :devlangmissions
  has_many :devsoftmissions
  has_many :languages, through: :devlangmissions
  has_many :soft_skills, through: :devsoftmissions

  attribute :diploma, :string
  attribute :availability, :boolean

  def self.get_devs_by_mission(mission)
    joins(:matches).where(matches: {mission: mission})
  end

  def self.get_bests_dev_from_mission(mission)
    all.each do |dev|
      dev.score = 0
      mission.languages.each do |language|
        dev.languages.include?(language) ? dev.score += 5 : dev.score += 0
      end
      mission.soft_skills.each do |skill|
        dev.soft_skills.include?(skill) ? dev.score += 3 : dev.score += 0
      end
      dev.save!
      # matchable_devs = Dev.where(dev.score > 1)
    end
    # @matchable_devs = matchable_devs
    # devs = Dev.all.map(&:score)
    @matchable_devs = Dev.where('score >= ?', 10).order(score: :desc)
    # @matchable_devs = matchable_devs.sort_by(:score)
  end


  # def self.get_bests_dev_from_mission(mission)
  #   # Créer un hash pour stocker les scores des développeurs
  #   scores = {}

  #   # Calculer les scores des développeurs en fonction des langages de la mission
  #   mission.languages.each do |language|
  #     all.each do |dev|
  #       scores[dev.id] ||= 0 # Initialise le score à 0 s'il n'a pas encore été défini
  #       scores[dev.id] += 5 if dev.languages.include?(language)
  #     end
  #   end

  #   # Calculer les scores des développeurs en fonction des compétences de la mission
  #   mission.soft_skills.each do |skill|
  #     all.each do |dev|
  #       scores[dev.id] ||= 0
  #       scores[dev.id] += 3 if dev.soft_skills.include?(skill)
  #     end
  #   end

  #   # Sélectionner les développeurs dont le score est supérieur à 0
  #   @matchable_devs = Dev.where(id: scores.select { |_, score| score > 0 }.keys)
  # end
end
