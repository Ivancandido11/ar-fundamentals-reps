require_relative 'spec_helper'

describe Donation do
  let!(:cooper) { User.create(first_name: "Cooper", last_name: "Sawyer", territory: "MD") }
  let!(:dion) { User.create(first_name: "Dion", last_name: "Theroulde", territory: "PHL") }
  let!(:drew) { User.create(first_name: "Drew", last_name: "McIndoe", territory: "PHL") }
  let!(:erica) { User.create(first_name: "Erica", last_name: "Winne", territory: "PHL") }
  let!(:gillian) { User.create(first_name: "Gillian", last_name: "Wenhold", territory: "PHL") }
  let!(:gordon) { User.create(first_name: "Gordon", last_name: "Hodanich", territory: "PHL") }
  let!(:ivan) { User.create(first_name: "Ivan", last_name: "Candido", territory: "TPA") }
  let!(:jelena) { User.create(first_name: "Jelena", last_name: "Durovic", territory: "HOU") }
  let!(:jon) { User.create(first_name: "Jon", last_name: "Gonzalez", territory: "PHL") }
  let!(:kurstyn) { User.create(first_name: "Kurstyn", last_name: "Storms", territory: "PHL") }
  let!(:kyle) { User.create(first_name: "Kyle", last_name: "Schechter", territory: "NJ") }
  let!(:rob) { User.create(first_name: "Rob", last_name: "Gentile", territory: "PHL") }
  let!(:sebastian) { User.create(first_name: "Sebastian", last_name: "Kopp", territory: "PHL") }
  let!(:steve) { User.create(first_name: "Steve", last_name: "Crane", territory: "PHL") }

  let!(:alexs) { Nonprofit.create(name: "Alex's Lemonade Stand", description: "Alex's Lemonade Stand Foundation is an American pediatric cancer charity founded by Alexandra \"Alex\" Scott, who lived in Pennsylvania and suffered from neuroblastoma.") }
  let!(:blm) { Nonprofit.create(name: "Black Lives Matter", description: "The official #BlackLivesMatter Global Network builds power to bring justice, healing, and freedom to Black people across the globe.") }
  let!(:bridges) { Nonprofit.create(name: "Bridges", description: "BRIDGES provides students an opportunity to find their voice through unique experiential learning activities that are adventurous, relational and transformative. As a result, participants are empowered to reach across racial and socio-economic divides, are prepared for secondary educational opportunities and careers, and are engaged in civic affairs in their communities.") }
  let!(:hope) { Nonprofit.create(name: "H.O.P.E.", description: "Homeless Organizing for Power and Equality (H.O.P.E.) is an organization whose members are exclusively people who are currently experiencing or have formerly experienced homelessness. H.O.P.E. is a voice for the homeless community in Memphis, redefining and challenging people’s ideas about homelessness and bridging the gap between the unsheltered and sheltered communities through grassroots activism, organizing, education, networking, and skills-training.") }
  let!(:streetdog) { Nonprofit.create(name: "Streetdog Foundation", description: "Streetdog Foundation rescues, rehabilitates, and re-homes stray and abandoned dogs in Memphis, TN.") }

  let!(:cooper_alexs) { Donation.create(user: cooper, nonprofit: alexs, amount: 10) }
  let!(:dion_alexs) { Donation.create(user: dion, nonprofit: alexs, amount: 17) }
  let!(:drew_alexs) { Donation.create(user: drew, nonprofit: alexs, amount: 104) }
  let!(:erica_alexs) { Donation.create(user: erica, nonprofit: alexs, amount: 23) }
  let!(:gillian_alexs) { Donation.create(user: gillian, nonprofit: alexs, amount: 34) }
  let!(:gordon_alexs) { Donation.create(user: gordon, nonprofit: alexs, amount: 12) }
  let!(:jelena_alexs) { Donation.create(user: jelena, nonprofit: alexs, amount: 55) }
  let!(:jon_alexs) { Donation.create(user: jon, nonprofit: alexs, amount: 10) }
  let!(:kurstyn_alexs) { Donation.create(user: kurstyn, nonprofit: alexs, amount: 32) }
  let!(:kyle_alexs) { Donation.create(user: kyle, nonprofit: alexs, amount: 106) }
  let!(:rob_alexs) { Donation.create(user: rob, nonprofit: alexs, amount: 59) }
  let!(:sebastian_alexs) { Donation.create(user: sebastian, nonprofit: alexs, amount: 32) }
  let!(:steve_alexs) { Donation.create(user: steve, nonprofit: alexs, amount: 12) }
  let!(:cooper_blm) { Donation.create(user: cooper, nonprofit: blm, amount: 49) }
  let!(:dion_blm) { Donation.create(user: dion, nonprofit: blm, amount: 112) }
  let!(:drew_blm) { Donation.create(user: drew, nonprofit: blm, amount: 28) }
  let!(:erica_blm) { Donation.create(user: erica, nonprofit: blm, amount: 95) }
  let!(:gillian_blm) { Donation.create(user: gillian, nonprofit: blm, amount: 500) }
  let!(:gordon_blm) { Donation.create(user: gordon, nonprofit: blm, amount: 290) }
  let!(:jelena_blm) { Donation.create(user: jelena, nonprofit: blm, amount: 38) }
  let!(:jon_blm) { Donation.create(user: jon, nonprofit: blm, amount: 120) }
  let!(:kurstyn_blm) { Donation.create(user: kurstyn, nonprofit: blm, amount: 43) }
  let!(:kyle_blm) { Donation.create(user: kyle, nonprofit: blm, amount: 129) }
  let!(:rob_blm) { Donation.create(user: rob, nonprofit: blm, amount: 32) }
  let!(:sebastian_blm) { Donation.create(user: sebastian, nonprofit: blm, amount: 50) }
  let!(:steve_blm) { Donation.create(user: steve, nonprofit: blm, amount: 122) }
  let!(:dion_bridges) { Donation.create(user: dion, nonprofit: bridges, amount: 24) }
  let!(:gillian_bridges) { Donation.create(user: gillian, nonprofit: bridges, amount: 100) }
  let!(:jon_bridges) { Donation.create(user: jon, nonprofit: bridges, amount: 24) }
  let!(:kurstyn_bridges) { Donation.create(user: kurstyn, nonprofit: bridges, amount: 290) }
  let!(:kyle_bridges) { Donation.create(user: kyle, nonprofit: bridges, amount: 290) }
  let!(:cooper_hope) { Donation.create(user: cooper, nonprofit: hope, amount: 20) }
  let!(:drew_hope) { Donation.create(user: drew, nonprofit: hope, amount: 390) }
  let!(:gillian_hope) { Donation.create(user: gillian, nonprofit: hope, amount: 20) }
  let!(:rob_hope) { Donation.create(user: rob, nonprofit: hope, amount: 200) }
  let!(:steve_hope) { Donation.create(user: steve, nonprofit: hope, amount: 120) }
  let!(:erica_streetdog) { Donation.create(user: erica, nonprofit: streetdog, amount: 320) }
  let!(:gordon_streetdog) { Donation.create(user: gordon, nonprofit: streetdog, amount: 320) }
  let!(:jelena_streetdog) { Donation.create(user: jelena, nonprofit: streetdog, amount: 320) }
  let!(:kurstyn_streetdog) { Donation.create(user: kurstyn, nonprofit: streetdog, amount: 320) }
  let!(:sebastian_streetdog) { Donation.create(user: sebastian, nonprofit: streetdog, amount: 320) }

  describe "attributes" do
    it "has a user_id, nonprofit_id and amount" do
      expect(cooper_alexs).to have_attributes(user_id: cooper.id, nonprofit_id: alexs.id, amount: 10)
    end
  end

  describe "associations" do
    it "belongs to a user" do
      expect(cooper_alexs.user).to eq(cooper)
    end

    it "belongs to a nonprofit" do
      expect(cooper_alexs.nonprofit).to eq(alexs)
    end
  end

  describe "querying fundamentals" do
    it "`Donation.get_last_3` returns the last 3 donations in the database" do
      expect(Donation.get_last_3).to eq([jelena_streetdog, kurstyn_streetdog, sebastian_streetdog])
    end

    it "`Donation.get_id_of_2` returns the donation with the `id` of 2" do
      expect(Donation.get_id_of_2).to eq(dion_alexs)
    end

    it "`Donation.get_from_first_user` returns the donations with a `user_id` of 1" do
      expect(Donation.get_from_first_user).to eq([cooper_alexs, cooper_blm, cooper_hope])
    end

    it "`Donation.get_id_of_18` returns the donation with an `id` of 18" do
      expect(Donation.get_id_of_18).to eq(gillian_blm)
    end

    it "`Donation.get_from_last_nonprofit` returns all donations made to the last `Nonprofit` in the database" do
      expect(Donation.get_from_last_nonprofit).to eq([erica_streetdog, gordon_streetdog, jelena_streetdog, kurstyn_streetdog, sebastian_streetdog])
    end

    it "`Donation.order_by_donation_amount` returns an array of all donations order by `amount` ascending", :aggregate_failures do
      expect(Donation.order_by_donation_amount.first).to eq(cooper_alexs)
      expect(Donation.order_by_donation_amount.last).to eq(gillian_blm)
    end

    it "`Donation.amount_over_350` returns a collection of all donations whose `amount` is greater than 300" do
      expect(Donation.amount_over_350).to eq([gillian_blm, drew_hope])
    end

    it "`Donation.count_of_donations` returns a count of all donations" do
      expect(Donation.count_of_donations).to eq(41)
    end

    it "`Donation.donations_to_nonprofit_with_id_of_4` returns an array of all donations with a `nonprofit_id` of 4" do
      expect(Donation.donations_to_nonprofit_with_id_of_4).to eq([cooper_hope, drew_hope, gillian_hope, rob_hope, steve_hope])
    end

    it "`Donation.total_dollars_donated` returns the sum of all `amount`s of donations" do
      expect(Donation.total_dollars_donated).to eq(5192)
    end

    it "`Donation.donations_by_user_with_id_of_13` returns all donations with a `user_id` of 13" do
      expect(Donation.donations_by_user_with_id_of_13).to eq([sebastian_alexs, sebastian_blm, sebastian_streetdog])
    end

  end
end
