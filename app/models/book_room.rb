class BookRoom < ApplicationRecord
  belongs_to :customer
  after_create :add_details
  after_update :add_dynamic_change
  validates :room, presence: true
  validates :days, presence: true

  def self.desc_order
    order("created_at DESC")
  end 

  private 

  def add_details 
    customer = Customer.find self.customer_id 
    if self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? && self.room22.present? && self.room23.present? && self.room24.present? && self.room25.present?  && self.room26.present? && self.room27.present?  && self.room28.present? && self.room29.present? && self.room30.present? 
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      room22 = Room.find self.room22
      room23 = Room.find self.room23
      room24 = Room.find self.room24
      room25 = Room.find self.room25
      room26 = Room.find self.room26
      room27 = Room.find self.room27
      room28 = Room.find self.room28
      room29 = Room.find self.room29
      room30 = Room.find self.room30
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number,  
                            :room_no22 => room22.room_number, 
                            :room_no23 => room23.room_number,  
                            :room_no24 => room24.room_number, 
                            :room_no25 => room25.room_number, 
                            :room_no26 => room26.room_number, 
                            :room_no27 => room27.room_number,  
                            :room_no28 => room28.room_number, 
                            :room_no29 => room29.room_number, 
                            :room_no30 => room30.room_number,
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :room_price12 => room12.room_category.price,
                            :room_price13 => room13.room_category.price,
                            :room_price14 => room14.room_category.price,
                            :room_price15 => room15.room_category.price,
                            :room_price16 => room16.room_category.price,
                            :room_price17 => room17.room_category.price,
                            :room_price18 => room18.room_category.price,
                            :room_price19 => room19.room_category.price,
                            :room_price20 => room20.room_category.price,
                            :room_price21 => room21.room_category.price,
                            :room_price22 => room22.room_category.price,
                            :room_price23 => room23.room_category.price,
                            :room_price24 => room24.room_category.price,
                            :room_price25 => room25.room_category.price,
                            :room_price26 => room26.room_category.price,
                            :room_price27 => room27.room_category.price,
                            :room_price28 => room28.room_category.price,
                            :room_price29 => room29.room_category.price,
                            :room_price30 => room30.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days,
                            :bill_price12 => room12.room_category.price * self.days,
                            :bill_price13 => room13.room_category.price * self.days,
                            :bill_price14 => room14.room_category.price * self.days,
                            :bill_price15 => room15.room_category.price * self.days,
                            :bill_price16 => room16.room_category.price * self.days,
                            :bill_price17 => room17.room_category.price * self.days,
                            :bill_price18 => room18.room_category.price * self.days,
                            :bill_price19 => room19.room_category.price * self.days,
                            :bill_price20 => room20.room_category.price * self.days,
                            :bill_price21 => room21.room_category.price * self.days,
                            :bill_price22 => room22.room_category.price * self.days,
                            :bill_price23 => room23.room_category.price * self.days,
                            :bill_price24 => room24.room_category.price * self.days,
                            :bill_price25 => room25.room_category.price * self.days,
                            :bill_price26 => room26.room_category.price * self.days,
                            :bill_price27 => room27.room_category.price * self.days,
                            :bill_price28 => room28.room_category.price * self.days,
                            :bill_price29 => room29.room_category.price * self.days,
                            :bill_price30 => room30.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i + 
                                     self.bill_price22.to_i + self.bill_price23.to_i + self.bill_price24.to_i + 
                                     self.bill_price25.to_i + self.bill_price26.to_i + self.bill_price27.to_i + 
                                     self.bill_price28.to_i + self.bill_price29.to_i + self.bill_price30.to_i 
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false
        room22.update_column :availability, false 
        room23.update_column :availability, false
        room24.update_column :availability, false
        room25.update_column :availability, false
        room26.update_column :availability, false
        room27.update_column :availability, false
        room28.update_column :availability, false
        room29.update_column :availability, false
        room30.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill22 = bill_cont.bills.create
        bill23 = bill_cont.bills.create
        bill24 = bill_cont.bills.create
        bill25 = bill_cont.bills.create
        bill26 = bill_cont.bills.create
        bill27 = bill_cont.bills.create
        bill28 = bill_cont.bills.create
        bill29 = bill_cont.bills.create
        bill30 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i   
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i
        bill22.update_columns :days => self.days, 
                            :room_number => room22.room_number,
                            :room => room22.id,
                            :room_price => self.room_price22, 
                            :bill_price => self.days.to_i * self.room_price22.to_i
        bill23.update_columns :days => self.days,
                            :room_number => room23.room_number,
                            :room => room23.id, 
                            :room_price => self.room_price23, 
                            :bill_price => self.days.to_i * self.room_price23.to_i
        bill24.update_columns :days => self.days, 
                            :room_number => room24.room_number,
                            :room => room24.id,
                            :room_price => self.room_price24, 
                            :bill_price => self.days.to_i * self.room_price24.to_i
        bill25.update_columns :days => self.days, 
                            :room_number => room25.room_number,
                            :room => room25.id,
                            :room_price => self.room_price25, 
                            :bill_price => self.days.to_i * self.room_price25.to_i
        bill26.update_columns :days => self.days,
                            :room_number => room26.room_number,
                            :room => room26.id, 
                            :room_price => self.room_price26, 
                            :bill_price => self.days.to_i * self.room_price26.to_i
        bill27.update_columns :days => self.days, 
                            :room_number => room27.room_number,
                            :room => room27.id,
                            :room_price => self.room_price27, 
                            :bill_price => self.days.to_i * self.room_price27.to_i
        bill28.update_columns :days => self.days,
                            :room_number => room28.room_number,
                            :room => room28.id, 
                            :room_price => self.room_price28, 
                            :bill_price => self.days.to_i * self.room_price28.to_i
        bill29.update_columns :days => self.days, 
                            :room_number => room29.room_number,
                            :room => room29.id,
                            :room_price => self.room_price29, 
                            :bill_price => self.days.to_i * self.room_price29.to_i      
        bill30.update_columns :days => self.days, 
                            :room_number => room30.room_number,
                            :room => room30.id,
                            :room_price => self.room_price30, 
                            :bill_price => self.days.to_i * self.room_price30.to_i                                                                                                                                                                                                                                       
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number, 
                            :room_no22 => room22.room_number, 
                            :room_no23 => room23.room_number,  
                            :room_no24 => room24.room_number, 
                            :room_no25 => room25.room_number, 
                            :room_no26 => room26.room_number, 
                            :room_no27 => room27.room_number,  
                            :room_no28 => room28.room_number, 
                            :room_no29 => room29.room_number, 
                            :room_no30 => room30.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :room_price12 => room12.room_category.price - self.disc_amount,
                            :room_price13 => room13.room_category.price - self.disc_amount,
                            :room_price14 => room14.room_category.price - self.disc_amount,
                            :room_price15 => room15.room_category.price - self.disc_amount,
                            :room_price16 => room16.room_category.price - self.disc_amount,
                            :room_price17 => room17.room_category.price - self.disc_amount,
                            :room_price18 => room18.room_category.price - self.disc_amount,
                            :room_price19 => room19.room_category.price - self.disc_amount,
                            :room_price20 => room20.room_category.price - self.disc_amount,
                            :room_price21 => room21.room_category.price - self.disc_amount,
                            :room_price22 => room22.room_category.price - self.disc_amount,
                            :room_price23 => room23.room_category.price - self.disc_amount,
                            :room_price24 => room24.room_category.price - self.disc_amount,
                            :room_price25 => room25.room_category.price - self.disc_amount,
                            :room_price26 => room26.room_category.price - self.disc_amount,
                            :room_price27 => room27.room_category.price - self.disc_amount,
                            :room_price28 => room28.room_category.price - self.disc_amount,
                            :room_price29 => room29.room_category.price - self.disc_amount,
                            :room_price30 => room30.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days,
                            :bill_price12 => (room12.room_category.price - self.disc_amount) * self.days, 
                            :bill_price13 => (room13.room_category.price - self.disc_amount) * self.days,
                            :bill_price14 => (room14.room_category.price - self.disc_amount) * self.days,
                            :bill_price15 => (room15.room_category.price - self.disc_amount) * self.days,
                            :bill_price16 => (room16.room_category.price - self.disc_amount) * self.days,
                            :bill_price17 => (room17.room_category.price - self.disc_amount) * self.days,
                            :bill_price18 => (room18.room_category.price - self.disc_amount) * self.days,
                            :bill_price19 => (room19.room_category.price - self.disc_amount) * self.days,
                            :bill_price20 => (room20.room_category.price - self.disc_amount) * self.days,
                            :bill_price21 => (room21.room_category.price - self.disc_amount) * self.days,
                            :bill_price22 => (room22.room_category.price - self.disc_amount) * self.days, 
                            :bill_price23 => (room23.room_category.price - self.disc_amount) * self.days,
                            :bill_price24 => (room24.room_category.price - self.disc_amount) * self.days,
                            :bill_price25 => (room25.room_category.price - self.disc_amount) * self.days,
                            :bill_price26 => (room26.room_category.price - self.disc_amount) * self.days,
                            :bill_price27 => (room27.room_category.price - self.disc_amount) * self.days,
                            :bill_price28 => (room28.room_category.price - self.disc_amount) * self.days,
                            :bill_price29 => (room29.room_category.price - self.disc_amount) * self.days,
                            :bill_price30 => (room30.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i + 
                                     self.bill_price22.to_i + self.bill_price23.to_i + self.bill_price24.to_i + 
                                     self.bill_price25.to_i + self.bill_price26.to_i + self.bill_price27.to_i + 
                                     self.bill_price28.to_i + self.bill_price29.to_i + self.bill_price30.to_i 
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false 
        room22.update_column :availability, false 
        room23.update_column :availability, false
        room24.update_column :availability, false
        room25.update_column :availability, false
        room26.update_column :availability, false
        room27.update_column :availability, false
        room28.update_column :availability, false
        room29.update_column :availability, false
        room30.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill22 = bill_cont.bills.create
        bill23 = bill_cont.bills.create
        bill24 = bill_cont.bills.create
        bill25 = bill_cont.bills.create
        bill26 = bill_cont.bills.create
        bill27 = bill_cont.bills.create
        bill28 = bill_cont.bills.create
        bill29 = bill_cont.bills.create
        bill30 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i
        bill22.update_columns :days => self.days, 
                            :room_number => room22.room_number,
                            :room => room22.id,
                            :room_price => self.room_price22, 
                            :bill_price => self.days.to_i * self.room_price22.to_i
        bill23.update_columns :days => self.days,
                            :room_number => room23.room_number,
                            :room => room23.id, 
                            :room_price => self.room_price23, 
                            :bill_price => self.days.to_i * self.room_price23.to_i
        bill24.update_columns :days => self.days, 
                            :room_number => room24.room_number,
                            :room => room24.id,
                            :room_price => self.room_price24, 
                            :bill_price => self.days.to_i * self.room_price24.to_i
        bill25.update_columns :days => self.days, 
                            :room_number => room25.room_number,
                            :room => room25.id,
                            :room_price => self.room_price25, 
                            :bill_price => self.days.to_i * self.room_price25.to_i
        bill26.update_columns :days => self.days,
                            :room_number => room26.room_number,
                            :room => room26.id, 
                            :room_price => self.room_price26, 
                            :bill_price => self.days.to_i * self.room_price26.to_i
        bill27.update_columns :days => self.days, 
                            :room_number => room27.room_number,
                            :room => room27.id,
                            :room_price => self.room_price27, 
                            :bill_price => self.days.to_i * self.room_price27.to_i
        bill28.update_columns :days => self.days,
                            :room_number => room28.room_number,
                            :room => room28.id, 
                            :room_price => self.room_price28, 
                            :bill_price => self.days.to_i * self.room_price28.to_i
        bill29.update_columns :days => self.days, 
                            :room_number => room29.room_number,
                            :room => room29.id,
                            :room_price => self.room_price29, 
                            :bill_price => self.days.to_i * self.room_price29.to_i      
        bill30.update_columns :days => self.days, 
                            :room_number => room30.room_number,
                            :room => room30.id,
                            :room_price => self.room_price30, 
                            :bill_price => self.days.to_i * self.room_price30.to_i                                                   

      end
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? && self.room22.present? && self.room23.present? && self.room24.present? && self.room25.present?  && self.room26.present? && self.room27.present?  && self.room28.present? && self.room29.present? 
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      room22 = Room.find self.room22
      room23 = Room.find self.room23
      room24 = Room.find self.room24
      room25 = Room.find self.room25
      room26 = Room.find self.room26
      room27 = Room.find self.room27
      room28 = Room.find self.room28
      room29 = Room.find self.room29
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number,  
                            :room_no22 => room22.room_number, 
                            :room_no23 => room23.room_number,  
                            :room_no24 => room24.room_number, 
                            :room_no25 => room25.room_number, 
                            :room_no26 => room26.room_number, 
                            :room_no27 => room27.room_number,  
                            :room_no28 => room28.room_number, 
                            :room_no29 => room29.room_number, 
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :room_price12 => room12.room_category.price,
                            :room_price13 => room13.room_category.price,
                            :room_price14 => room14.room_category.price,
                            :room_price15 => room15.room_category.price,
                            :room_price16 => room16.room_category.price,
                            :room_price17 => room17.room_category.price,
                            :room_price18 => room18.room_category.price,
                            :room_price19 => room19.room_category.price,
                            :room_price20 => room20.room_category.price,
                            :room_price21 => room21.room_category.price,
                            :room_price22 => room22.room_category.price,
                            :room_price23 => room23.room_category.price,
                            :room_price24 => room24.room_category.price,
                            :room_price25 => room25.room_category.price,
                            :room_price26 => room26.room_category.price,
                            :room_price27 => room27.room_category.price,
                            :room_price28 => room28.room_category.price,
                            :room_price29 => room29.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days,
                            :bill_price12 => room12.room_category.price * self.days,
                            :bill_price13 => room13.room_category.price * self.days,
                            :bill_price14 => room14.room_category.price * self.days,
                            :bill_price15 => room15.room_category.price * self.days,
                            :bill_price16 => room16.room_category.price * self.days,
                            :bill_price17 => room17.room_category.price * self.days,
                            :bill_price18 => room18.room_category.price * self.days,
                            :bill_price19 => room19.room_category.price * self.days,
                            :bill_price20 => room20.room_category.price * self.days,
                            :bill_price21 => room21.room_category.price * self.days,
                            :bill_price22 => room22.room_category.price * self.days,
                            :bill_price23 => room23.room_category.price * self.days,
                            :bill_price24 => room24.room_category.price * self.days,
                            :bill_price25 => room25.room_category.price * self.days,
                            :bill_price26 => room26.room_category.price * self.days,
                            :bill_price27 => room27.room_category.price * self.days,
                            :bill_price28 => room28.room_category.price * self.days,
                            :bill_price29 => room29.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i + 
                                     self.bill_price22.to_i + self.bill_price23.to_i + self.bill_price24.to_i + 
                                     self.bill_price25.to_i + self.bill_price26.to_i + self.bill_price27.to_i + 
                                     self.bill_price28.to_i + self.bill_price29.to_i 
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false
        room22.update_column :availability, false 
        room23.update_column :availability, false
        room24.update_column :availability, false
        room25.update_column :availability, false
        room26.update_column :availability, false
        room27.update_column :availability, false
        room28.update_column :availability, false
        room29.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill22 = bill_cont.bills.create
        bill23 = bill_cont.bills.create
        bill24 = bill_cont.bills.create
        bill25 = bill_cont.bills.create
        bill26 = bill_cont.bills.create
        bill27 = bill_cont.bills.create
        bill28 = bill_cont.bills.create
        bill29 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i   
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i
        bill22.update_columns :days => self.days, 
                            :room_number => room22.room_number,
                            :room => room22.id,
                            :room_price => self.room_price22, 
                            :bill_price => self.days.to_i * self.room_price22.to_i
        bill23.update_columns :days => self.days,
                            :room_number => room23.room_number,
                            :room => room23.id, 
                            :room_price => self.room_price23, 
                            :bill_price => self.days.to_i * self.room_price23.to_i
        bill24.update_columns :days => self.days, 
                            :room_number => room24.room_number,
                            :room => room24.id,
                            :room_price => self.room_price24, 
                            :bill_price => self.days.to_i * self.room_price24.to_i
        bill25.update_columns :days => self.days, 
                            :room_number => room25.room_number,
                            :room => room25.id,
                            :room_price => self.room_price25, 
                            :bill_price => self.days.to_i * self.room_price25.to_i
        bill26.update_columns :days => self.days,
                            :room_number => room26.room_number,
                            :room => room26.id, 
                            :room_price => self.room_price26, 
                            :bill_price => self.days.to_i * self.room_price26.to_i
        bill27.update_columns :days => self.days, 
                            :room_number => room27.room_number,
                            :room => room27.id,
                            :room_price => self.room_price27, 
                            :bill_price => self.days.to_i * self.room_price27.to_i
        bill28.update_columns :days => self.days,
                            :room_number => room28.room_number,
                            :room => room28.id, 
                            :room_price => self.room_price28, 
                            :bill_price => self.days.to_i * self.room_price28.to_i
        bill29.update_columns :days => self.days, 
                            :room_number => room29.room_number,
                            :room => room29.id,
                            :room_price => self.room_price29, 
                            :bill_price => self.days.to_i * self.room_price29.to_i                                                                                                                                                                                                                                        
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number, 
                            :room_no22 => room22.room_number, 
                            :room_no23 => room23.room_number,  
                            :room_no24 => room24.room_number, 
                            :room_no25 => room25.room_number, 
                            :room_no26 => room26.room_number, 
                            :room_no27 => room27.room_number,  
                            :room_no28 => room28.room_number, 
                            :room_no29 => room29.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :room_price12 => room12.room_category.price - self.disc_amount,
                            :room_price13 => room13.room_category.price - self.disc_amount,
                            :room_price14 => room14.room_category.price - self.disc_amount,
                            :room_price15 => room15.room_category.price - self.disc_amount,
                            :room_price16 => room16.room_category.price - self.disc_amount,
                            :room_price17 => room17.room_category.price - self.disc_amount,
                            :room_price18 => room18.room_category.price - self.disc_amount,
                            :room_price19 => room19.room_category.price - self.disc_amount,
                            :room_price20 => room20.room_category.price - self.disc_amount,
                            :room_price21 => room21.room_category.price - self.disc_amount,
                            :room_price22 => room22.room_category.price - self.disc_amount,
                            :room_price23 => room23.room_category.price - self.disc_amount,
                            :room_price24 => room24.room_category.price - self.disc_amount,
                            :room_price25 => room25.room_category.price - self.disc_amount,
                            :room_price26 => room26.room_category.price - self.disc_amount,
                            :room_price27 => room27.room_category.price - self.disc_amount,
                            :room_price28 => room28.room_category.price - self.disc_amount,
                            :room_price29 => room29.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days,
                            :bill_price12 => (room12.room_category.price - self.disc_amount) * self.days, 
                            :bill_price13 => (room13.room_category.price - self.disc_amount) * self.days,
                            :bill_price14 => (room14.room_category.price - self.disc_amount) * self.days,
                            :bill_price15 => (room15.room_category.price - self.disc_amount) * self.days,
                            :bill_price16 => (room16.room_category.price - self.disc_amount) * self.days,
                            :bill_price17 => (room17.room_category.price - self.disc_amount) * self.days,
                            :bill_price18 => (room18.room_category.price - self.disc_amount) * self.days,
                            :bill_price19 => (room19.room_category.price - self.disc_amount) * self.days,
                            :bill_price20 => (room20.room_category.price - self.disc_amount) * self.days,
                            :bill_price21 => (room21.room_category.price - self.disc_amount) * self.days,
                            :bill_price22 => (room22.room_category.price - self.disc_amount) * self.days, 
                            :bill_price23 => (room23.room_category.price - self.disc_amount) * self.days,
                            :bill_price24 => (room24.room_category.price - self.disc_amount) * self.days,
                            :bill_price25 => (room25.room_category.price - self.disc_amount) * self.days,
                            :bill_price26 => (room26.room_category.price - self.disc_amount) * self.days,
                            :bill_price27 => (room27.room_category.price - self.disc_amount) * self.days,
                            :bill_price28 => (room28.room_category.price - self.disc_amount) * self.days,
                            :bill_price29 => (room29.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i + 
                                     self.bill_price22.to_i + self.bill_price23.to_i + self.bill_price24.to_i + 
                                     self.bill_price25.to_i + self.bill_price26.to_i + self.bill_price27.to_i + 
                                     self.bill_price28.to_i + self.bill_price29.to_i  
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false 
        room22.update_column :availability, false 
        room23.update_column :availability, false
        room24.update_column :availability, false
        room25.update_column :availability, false
        room26.update_column :availability, false
        room27.update_column :availability, false
        room28.update_column :availability, false
        room29.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill22 = bill_cont.bills.create
        bill23 = bill_cont.bills.create
        bill24 = bill_cont.bills.create
        bill25 = bill_cont.bills.create
        bill26 = bill_cont.bills.create
        bill27 = bill_cont.bills.create
        bill28 = bill_cont.bills.create
        bill29 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i
        bill22.update_columns :days => self.days, 
                            :room_number => room22.room_number,
                            :room => room22.id,
                            :room_price => self.room_price22, 
                            :bill_price => self.days.to_i * self.room_price22.to_i
        bill23.update_columns :days => self.days,
                            :room_number => room23.room_number,
                            :room => room23.id, 
                            :room_price => self.room_price23, 
                            :bill_price => self.days.to_i * self.room_price23.to_i
        bill24.update_columns :days => self.days, 
                            :room_number => room24.room_number,
                            :room => room24.id,
                            :room_price => self.room_price24, 
                            :bill_price => self.days.to_i * self.room_price24.to_i
        bill25.update_columns :days => self.days, 
                            :room_number => room25.room_number,
                            :room => room25.id,
                            :room_price => self.room_price25, 
                            :bill_price => self.days.to_i * self.room_price25.to_i
        bill26.update_columns :days => self.days,
                            :room_number => room26.room_number,
                            :room => room26.id, 
                            :room_price => self.room_price26, 
                            :bill_price => self.days.to_i * self.room_price26.to_i
        bill27.update_columns :days => self.days, 
                            :room_number => room27.room_number,
                            :room => room27.id,
                            :room_price => self.room_price27, 
                            :bill_price => self.days.to_i * self.room_price27.to_i
        bill28.update_columns :days => self.days,
                            :room_number => room28.room_number,
                            :room => room28.id, 
                            :room_price => self.room_price28, 
                            :bill_price => self.days.to_i * self.room_price28.to_i
        bill29.update_columns :days => self.days, 
                            :room_number => room29.room_number,
                            :room => room29.id,
                            :room_price => self.room_price29, 
                            :bill_price => self.days.to_i * self.room_price29.to_i                                                     
      end   
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? && self.room22.present? && self.room23.present? && self.room24.present? && self.room25.present?  && self.room26.present? && self.room27.present?  && self.room28.present? 
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      room22 = Room.find self.room22
      room23 = Room.find self.room23
      room24 = Room.find self.room24
      room25 = Room.find self.room25
      room26 = Room.find self.room26
      room27 = Room.find self.room27
      room28 = Room.find self.room28
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number,  
                            :room_no22 => room22.room_number, 
                            :room_no23 => room23.room_number,  
                            :room_no24 => room24.room_number, 
                            :room_no25 => room25.room_number, 
                            :room_no26 => room26.room_number, 
                            :room_no27 => room27.room_number,  
                            :room_no28 => room28.room_number, 
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :room_price12 => room12.room_category.price,
                            :room_price13 => room13.room_category.price,
                            :room_price14 => room14.room_category.price,
                            :room_price15 => room15.room_category.price,
                            :room_price16 => room16.room_category.price,
                            :room_price17 => room17.room_category.price,
                            :room_price18 => room18.room_category.price,
                            :room_price19 => room19.room_category.price,
                            :room_price20 => room20.room_category.price,
                            :room_price21 => room21.room_category.price,
                            :room_price22 => room22.room_category.price,
                            :room_price23 => room23.room_category.price,
                            :room_price24 => room24.room_category.price,
                            :room_price25 => room25.room_category.price,
                            :room_price26 => room26.room_category.price,
                            :room_price27 => room27.room_category.price,
                            :room_price28 => room28.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days,
                            :bill_price12 => room12.room_category.price * self.days,
                            :bill_price13 => room13.room_category.price * self.days,
                            :bill_price14 => room14.room_category.price * self.days,
                            :bill_price15 => room15.room_category.price * self.days,
                            :bill_price16 => room16.room_category.price * self.days,
                            :bill_price17 => room17.room_category.price * self.days,
                            :bill_price18 => room18.room_category.price * self.days,
                            :bill_price19 => room19.room_category.price * self.days,
                            :bill_price20 => room20.room_category.price * self.days,
                            :bill_price21 => room21.room_category.price * self.days,
                            :bill_price22 => room22.room_category.price * self.days,
                            :bill_price23 => room23.room_category.price * self.days,
                            :bill_price24 => room24.room_category.price * self.days,
                            :bill_price25 => room25.room_category.price * self.days,
                            :bill_price26 => room26.room_category.price * self.days,
                            :bill_price27 => room27.room_category.price * self.days,
                            :bill_price28 => room28.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i + 
                                     self.bill_price22.to_i + self.bill_price23.to_i + self.bill_price24.to_i + 
                                     self.bill_price25.to_i + self.bill_price26.to_i + self.bill_price27.to_i + 
                                     self.bill_price28.to_i  
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false
        room22.update_column :availability, false 
        room23.update_column :availability, false
        room24.update_column :availability, false
        room25.update_column :availability, false
        room26.update_column :availability, false
        room27.update_column :availability, false
        room28.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill22 = bill_cont.bills.create
        bill23 = bill_cont.bills.create
        bill24 = bill_cont.bills.create
        bill25 = bill_cont.bills.create
        bill26 = bill_cont.bills.create
        bill27 = bill_cont.bills.create
        bill28 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i   
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i
        bill22.update_columns :days => self.days, 
                            :room_number => room22.room_number,
                            :room => room22.id,
                            :room_price => self.room_price22, 
                            :bill_price => self.days.to_i * self.room_price22.to_i
        bill23.update_columns :days => self.days,
                            :room_number => room23.room_number,
                            :room => room23.id, 
                            :room_price => self.room_price23, 
                            :bill_price => self.days.to_i * self.room_price23.to_i
        bill24.update_columns :days => self.days, 
                            :room_number => room24.room_number,
                            :room => room24.id,
                            :room_price => self.room_price24, 
                            :bill_price => self.days.to_i * self.room_price24.to_i
        bill25.update_columns :days => self.days, 
                            :room_number => room25.room_number,
                            :room => room25.id,
                            :room_price => self.room_price25, 
                            :bill_price => self.days.to_i * self.room_price25.to_i
        bill26.update_columns :days => self.days,
                            :room_number => room26.room_number,
                            :room => room26.id, 
                            :room_price => self.room_price26, 
                            :bill_price => self.days.to_i * self.room_price26.to_i
        bill27.update_columns :days => self.days, 
                            :room_number => room27.room_number,
                            :room => room27.id,
                            :room_price => self.room_price27, 
                            :bill_price => self.days.to_i * self.room_price27.to_i
        bill28.update_columns :days => self.days,
                            :room_number => room28.room_number,
                            :room => room28.id, 
                            :room_price => self.room_price28, 
                            :bill_price => self.days.to_i * self.room_price28.to_i                                                                                                                                                                                                                                    
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number, 
                            :room_no22 => room22.room_number, 
                            :room_no23 => room23.room_number,  
                            :room_no24 => room24.room_number, 
                            :room_no25 => room25.room_number, 
                            :room_no26 => room26.room_number, 
                            :room_no27 => room27.room_number,  
                            :room_no28 => room28.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :room_price12 => room12.room_category.price - self.disc_amount,
                            :room_price13 => room13.room_category.price - self.disc_amount,
                            :room_price14 => room14.room_category.price - self.disc_amount,
                            :room_price15 => room15.room_category.price - self.disc_amount,
                            :room_price16 => room16.room_category.price - self.disc_amount,
                            :room_price17 => room17.room_category.price - self.disc_amount,
                            :room_price18 => room18.room_category.price - self.disc_amount,
                            :room_price19 => room19.room_category.price - self.disc_amount,
                            :room_price20 => room20.room_category.price - self.disc_amount,
                            :room_price21 => room21.room_category.price - self.disc_amount,
                            :room_price22 => room22.room_category.price - self.disc_amount,
                            :room_price23 => room23.room_category.price - self.disc_amount,
                            :room_price24 => room24.room_category.price - self.disc_amount,
                            :room_price25 => room25.room_category.price - self.disc_amount,
                            :room_price26 => room26.room_category.price - self.disc_amount,
                            :room_price27 => room27.room_category.price - self.disc_amount,
                            :room_price28 => room28.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days,
                            :bill_price12 => (room12.room_category.price - self.disc_amount) * self.days, 
                            :bill_price13 => (room13.room_category.price - self.disc_amount) * self.days,
                            :bill_price14 => (room14.room_category.price - self.disc_amount) * self.days,
                            :bill_price15 => (room15.room_category.price - self.disc_amount) * self.days,
                            :bill_price16 => (room16.room_category.price - self.disc_amount) * self.days,
                            :bill_price17 => (room17.room_category.price - self.disc_amount) * self.days,
                            :bill_price18 => (room18.room_category.price - self.disc_amount) * self.days,
                            :bill_price19 => (room19.room_category.price - self.disc_amount) * self.days,
                            :bill_price20 => (room20.room_category.price - self.disc_amount) * self.days,
                            :bill_price21 => (room21.room_category.price - self.disc_amount) * self.days,
                            :bill_price22 => (room22.room_category.price - self.disc_amount) * self.days, 
                            :bill_price23 => (room23.room_category.price - self.disc_amount) * self.days,
                            :bill_price24 => (room24.room_category.price - self.disc_amount) * self.days,
                            :bill_price25 => (room25.room_category.price - self.disc_amount) * self.days,
                            :bill_price26 => (room26.room_category.price - self.disc_amount) * self.days,
                            :bill_price27 => (room27.room_category.price - self.disc_amount) * self.days,
                            :bill_price28 => (room28.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i + 
                                     self.bill_price22.to_i + self.bill_price23.to_i + self.bill_price24.to_i + 
                                     self.bill_price25.to_i + self.bill_price26.to_i + self.bill_price27.to_i + 
                                     self.bill_price28.to_i  
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false 
        room22.update_column :availability, false 
        room23.update_column :availability, false
        room24.update_column :availability, false
        room25.update_column :availability, false
        room26.update_column :availability, false
        room27.update_column :availability, false
        room28.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill22 = bill_cont.bills.create
        bill23 = bill_cont.bills.create
        bill24 = bill_cont.bills.create
        bill25 = bill_cont.bills.create
        bill26 = bill_cont.bills.create
        bill27 = bill_cont.bills.create
        bill28 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i
        bill22.update_columns :days => self.days, 
                            :room_number => room22.room_number,
                            :room => room22.id,
                            :room_price => self.room_price22, 
                            :bill_price => self.days.to_i * self.room_price22.to_i
        bill23.update_columns :days => self.days,
                            :room_number => room23.room_number,
                            :room => room23.id, 
                            :room_price => self.room_price23, 
                            :bill_price => self.days.to_i * self.room_price23.to_i
        bill24.update_columns :days => self.days, 
                            :room_number => room24.room_number,
                            :room => room24.id,
                            :room_price => self.room_price24, 
                            :bill_price => self.days.to_i * self.room_price24.to_i
        bill25.update_columns :days => self.days, 
                            :room_number => room25.room_number,
                            :room => room25.id,
                            :room_price => self.room_price25, 
                            :bill_price => self.days.to_i * self.room_price25.to_i
        bill26.update_columns :days => self.days,
                            :room_number => room26.room_number,
                            :room => room26.id, 
                            :room_price => self.room_price26, 
                            :bill_price => self.days.to_i * self.room_price26.to_i
        bill27.update_columns :days => self.days, 
                            :room_number => room27.room_number,
                            :room => room27.id,
                            :room_price => self.room_price27, 
                            :bill_price => self.days.to_i * self.room_price27.to_i
        bill28.update_columns :days => self.days,
                            :room_number => room28.room_number,
                            :room => room28.id, 
                            :room_price => self.room_price28, 
                            :bill_price => self.days.to_i * self.room_price28.to_i                                                 
      end   
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? && self.room22.present? && self.room23.present? && self.room24.present? && self.room25.present?  && self.room26.present? && self.room27.present? 
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      room22 = Room.find self.room22
      room23 = Room.find self.room23
      room24 = Room.find self.room24
      room25 = Room.find self.room25
      room26 = Room.find self.room26
      room27 = Room.find self.room27
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number,  
                            :room_no22 => room22.room_number, 
                            :room_no23 => room23.room_number,  
                            :room_no24 => room24.room_number, 
                            :room_no25 => room25.room_number, 
                            :room_no26 => room26.room_number, 
                            :room_no27 => room27.room_number,  
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :room_price12 => room12.room_category.price,
                            :room_price13 => room13.room_category.price,
                            :room_price14 => room14.room_category.price,
                            :room_price15 => room15.room_category.price,
                            :room_price16 => room16.room_category.price,
                            :room_price17 => room17.room_category.price,
                            :room_price18 => room18.room_category.price,
                            :room_price19 => room19.room_category.price,
                            :room_price20 => room20.room_category.price,
                            :room_price21 => room21.room_category.price,
                            :room_price22 => room22.room_category.price,
                            :room_price23 => room23.room_category.price,
                            :room_price24 => room24.room_category.price,
                            :room_price25 => room25.room_category.price,
                            :room_price26 => room26.room_category.price,
                            :room_price27 => room27.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days,
                            :bill_price12 => room12.room_category.price * self.days,
                            :bill_price13 => room13.room_category.price * self.days,
                            :bill_price14 => room14.room_category.price * self.days,
                            :bill_price15 => room15.room_category.price * self.days,
                            :bill_price16 => room16.room_category.price * self.days,
                            :bill_price17 => room17.room_category.price * self.days,
                            :bill_price18 => room18.room_category.price * self.days,
                            :bill_price19 => room19.room_category.price * self.days,
                            :bill_price20 => room20.room_category.price * self.days,
                            :bill_price21 => room21.room_category.price * self.days,
                            :bill_price22 => room22.room_category.price * self.days,
                            :bill_price23 => room23.room_category.price * self.days,
                            :bill_price24 => room24.room_category.price * self.days,
                            :bill_price25 => room25.room_category.price * self.days,
                            :bill_price26 => room26.room_category.price * self.days,
                            :bill_price27 => room27.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i + 
                                     self.bill_price22.to_i + self.bill_price23.to_i + self.bill_price24.to_i + 
                                     self.bill_price25.to_i + self.bill_price26.to_i + self.bill_price27.to_i  
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false
        room22.update_column :availability, false 
        room23.update_column :availability, false
        room24.update_column :availability, false
        room25.update_column :availability, false
        room26.update_column :availability, false
        room27.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill22 = bill_cont.bills.create
        bill23 = bill_cont.bills.create
        bill24 = bill_cont.bills.create
        bill25 = bill_cont.bills.create
        bill26 = bill_cont.bills.create
        bill27 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i   
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i
        bill22.update_columns :days => self.days, 
                            :room_number => room22.room_number,
                            :room => room22.id,
                            :room_price => self.room_price22, 
                            :bill_price => self.days.to_i * self.room_price22.to_i
        bill23.update_columns :days => self.days,
                            :room_number => room23.room_number,
                            :room => room23.id, 
                            :room_price => self.room_price23, 
                            :bill_price => self.days.to_i * self.room_price23.to_i
        bill24.update_columns :days => self.days, 
                            :room_number => room24.room_number,
                            :room => room24.id,
                            :room_price => self.room_price24, 
                            :bill_price => self.days.to_i * self.room_price24.to_i
        bill25.update_columns :days => self.days, 
                            :room_number => room25.room_number,
                            :room => room25.id,
                            :room_price => self.room_price25, 
                            :bill_price => self.days.to_i * self.room_price25.to_i
        bill26.update_columns :days => self.days,
                            :room_number => room26.room_number,
                            :room => room26.id, 
                            :room_price => self.room_price26, 
                            :bill_price => self.days.to_i * self.room_price26.to_i
        bill27.update_columns :days => self.days, 
                            :room_number => room27.room_number,
                            :room => room27.id,
                            :room_price => self.room_price27, 
                            :bill_price => self.days.to_i * self.room_price27.to_i
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number, 
                            :room_no22 => room22.room_number, 
                            :room_no23 => room23.room_number,  
                            :room_no24 => room24.room_number, 
                            :room_no25 => room25.room_number, 
                            :room_no26 => room26.room_number, 
                            :room_no27 => room27.room_number,  
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :room_price12 => room12.room_category.price - self.disc_amount,
                            :room_price13 => room13.room_category.price - self.disc_amount,
                            :room_price14 => room14.room_category.price - self.disc_amount,
                            :room_price15 => room15.room_category.price - self.disc_amount,
                            :room_price16 => room16.room_category.price - self.disc_amount,
                            :room_price17 => room17.room_category.price - self.disc_amount,
                            :room_price18 => room18.room_category.price - self.disc_amount,
                            :room_price19 => room19.room_category.price - self.disc_amount,
                            :room_price20 => room20.room_category.price - self.disc_amount,
                            :room_price21 => room21.room_category.price - self.disc_amount,
                            :room_price22 => room22.room_category.price - self.disc_amount,
                            :room_price23 => room23.room_category.price - self.disc_amount,
                            :room_price24 => room24.room_category.price - self.disc_amount,
                            :room_price25 => room25.room_category.price - self.disc_amount,
                            :room_price26 => room26.room_category.price - self.disc_amount,
                            :room_price27 => room27.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days,
                            :bill_price12 => (room12.room_category.price - self.disc_amount) * self.days, 
                            :bill_price13 => (room13.room_category.price - self.disc_amount) * self.days,
                            :bill_price14 => (room14.room_category.price - self.disc_amount) * self.days,
                            :bill_price15 => (room15.room_category.price - self.disc_amount) * self.days,
                            :bill_price16 => (room16.room_category.price - self.disc_amount) * self.days,
                            :bill_price17 => (room17.room_category.price - self.disc_amount) * self.days,
                            :bill_price18 => (room18.room_category.price - self.disc_amount) * self.days,
                            :bill_price19 => (room19.room_category.price - self.disc_amount) * self.days,
                            :bill_price20 => (room20.room_category.price - self.disc_amount) * self.days,
                            :bill_price21 => (room21.room_category.price - self.disc_amount) * self.days,
                            :bill_price22 => (room22.room_category.price - self.disc_amount) * self.days, 
                            :bill_price23 => (room23.room_category.price - self.disc_amount) * self.days,
                            :bill_price24 => (room24.room_category.price - self.disc_amount) * self.days,
                            :bill_price25 => (room25.room_category.price - self.disc_amount) * self.days,
                            :bill_price26 => (room26.room_category.price - self.disc_amount) * self.days,
                            :bill_price27 => (room27.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i + 
                                     self.bill_price22.to_i + self.bill_price23.to_i + self.bill_price24.to_i + 
                                     self.bill_price25.to_i + self.bill_price26.to_i + self.bill_price27.to_i  
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false 
        room22.update_column :availability, false 
        room23.update_column :availability, false
        room24.update_column :availability, false
        room25.update_column :availability, false
        room26.update_column :availability, false
        room27.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill22 = bill_cont.bills.create
        bill23 = bill_cont.bills.create
        bill24 = bill_cont.bills.create
        bill25 = bill_cont.bills.create
        bill26 = bill_cont.bills.create
        bill27 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i
        bill22.update_columns :days => self.days, 
                            :room_number => room22.room_number,
                            :room => room22.id,
                            :room_price => self.room_price22, 
                            :bill_price => self.days.to_i * self.room_price22.to_i
        bill23.update_columns :days => self.days,
                            :room_number => room23.room_number,
                            :room => room23.id, 
                            :room_price => self.room_price23, 
                            :bill_price => self.days.to_i * self.room_price23.to_i
        bill24.update_columns :days => self.days, 
                            :room_number => room24.room_number,
                            :room => room24.id,
                            :room_price => self.room_price24, 
                            :bill_price => self.days.to_i * self.room_price24.to_i
        bill25.update_columns :days => self.days, 
                            :room_number => room25.room_number,
                            :room => room25.id,
                            :room_price => self.room_price25, 
                            :bill_price => self.days.to_i * self.room_price25.to_i
        bill26.update_columns :days => self.days,
                            :room_number => room26.room_number,
                            :room => room26.id, 
                            :room_price => self.room_price26, 
                            :bill_price => self.days.to_i * self.room_price26.to_i
        bill27.update_columns :days => self.days, 
                            :room_number => room27.room_number,
                            :room => room27.id,
                            :room_price => self.room_price27, 
                            :bill_price => self.days.to_i * self.room_price27.to_i
      end   
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? && self.room22.present? && self.room23.present? && self.room24.present? && self.room25.present?  && self.room26.present? 
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      room22 = Room.find self.room22
      room23 = Room.find self.room23
      room24 = Room.find self.room24
      room25 = Room.find self.room25
      room26 = Room.find self.room26
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number,  
                            :room_no22 => room22.room_number, 
                            :room_no23 => room23.room_number,  
                            :room_no24 => room24.room_number, 
                            :room_no25 => room25.room_number, 
                            :room_no26 => room26.room_number, 
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :room_price12 => room12.room_category.price,
                            :room_price13 => room13.room_category.price,
                            :room_price14 => room14.room_category.price,
                            :room_price15 => room15.room_category.price,
                            :room_price16 => room16.room_category.price,
                            :room_price17 => room17.room_category.price,
                            :room_price18 => room18.room_category.price,
                            :room_price19 => room19.room_category.price,
                            :room_price20 => room20.room_category.price,
                            :room_price21 => room21.room_category.price,
                            :room_price22 => room22.room_category.price,
                            :room_price23 => room23.room_category.price,
                            :room_price24 => room24.room_category.price,
                            :room_price25 => room25.room_category.price,
                            :room_price26 => room26.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days,
                            :bill_price12 => room12.room_category.price * self.days,
                            :bill_price13 => room13.room_category.price * self.days,
                            :bill_price14 => room14.room_category.price * self.days,
                            :bill_price15 => room15.room_category.price * self.days,
                            :bill_price16 => room16.room_category.price * self.days,
                            :bill_price17 => room17.room_category.price * self.days,
                            :bill_price18 => room18.room_category.price * self.days,
                            :bill_price19 => room19.room_category.price * self.days,
                            :bill_price20 => room20.room_category.price * self.days,
                            :bill_price21 => room21.room_category.price * self.days,
                            :bill_price22 => room22.room_category.price * self.days,
                            :bill_price23 => room23.room_category.price * self.days,
                            :bill_price24 => room24.room_category.price * self.days,
                            :bill_price25 => room25.room_category.price * self.days,
                            :bill_price26 => room26.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i + 
                                     self.bill_price22.to_i + self.bill_price23.to_i + self.bill_price24.to_i + 
                                     self.bill_price25.to_i + self.bill_price26.to_i  
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false
        room22.update_column :availability, false 
        room23.update_column :availability, false
        room24.update_column :availability, false
        room25.update_column :availability, false
        room26.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill22 = bill_cont.bills.create
        bill23 = bill_cont.bills.create
        bill24 = bill_cont.bills.create
        bill25 = bill_cont.bills.create
        bill26 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i   
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i
        bill22.update_columns :days => self.days, 
                            :room_number => room22.room_number,
                            :room => room22.id,
                            :room_price => self.room_price22, 
                            :bill_price => self.days.to_i * self.room_price22.to_i
        bill23.update_columns :days => self.days,
                            :room_number => room23.room_number,
                            :room => room23.id, 
                            :room_price => self.room_price23, 
                            :bill_price => self.days.to_i * self.room_price23.to_i
        bill24.update_columns :days => self.days, 
                            :room_number => room24.room_number,
                            :room => room24.id,
                            :room_price => self.room_price24, 
                            :bill_price => self.days.to_i * self.room_price24.to_i
        bill25.update_columns :days => self.days, 
                            :room_number => room25.room_number,
                            :room => room25.id,
                            :room_price => self.room_price25, 
                            :bill_price => self.days.to_i * self.room_price25.to_i
        bill26.update_columns :days => self.days,
                            :room_number => room26.room_number,
                            :room => room26.id, 
                            :room_price => self.room_price26, 
                            :bill_price => self.days.to_i * self.room_price26.to_i                                                                                                                                                                                                                                     
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number, 
                            :room_no22 => room22.room_number, 
                            :room_no23 => room23.room_number,  
                            :room_no24 => room24.room_number, 
                            :room_no25 => room25.room_number, 
                            :room_no26 => room26.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :room_price12 => room12.room_category.price - self.disc_amount,
                            :room_price13 => room13.room_category.price - self.disc_amount,
                            :room_price14 => room14.room_category.price - self.disc_amount,
                            :room_price15 => room15.room_category.price - self.disc_amount,
                            :room_price16 => room16.room_category.price - self.disc_amount,
                            :room_price17 => room17.room_category.price - self.disc_amount,
                            :room_price18 => room18.room_category.price - self.disc_amount,
                            :room_price19 => room19.room_category.price - self.disc_amount,
                            :room_price20 => room20.room_category.price - self.disc_amount,
                            :room_price21 => room21.room_category.price - self.disc_amount,
                            :room_price22 => room22.room_category.price - self.disc_amount,
                            :room_price23 => room23.room_category.price - self.disc_amount,
                            :room_price24 => room24.room_category.price - self.disc_amount,
                            :room_price25 => room25.room_category.price - self.disc_amount,
                            :room_price26 => room26.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days,
                            :bill_price12 => (room12.room_category.price - self.disc_amount) * self.days, 
                            :bill_price13 => (room13.room_category.price - self.disc_amount) * self.days,
                            :bill_price14 => (room14.room_category.price - self.disc_amount) * self.days,
                            :bill_price15 => (room15.room_category.price - self.disc_amount) * self.days,
                            :bill_price16 => (room16.room_category.price - self.disc_amount) * self.days,
                            :bill_price17 => (room17.room_category.price - self.disc_amount) * self.days,
                            :bill_price18 => (room18.room_category.price - self.disc_amount) * self.days,
                            :bill_price19 => (room19.room_category.price - self.disc_amount) * self.days,
                            :bill_price20 => (room20.room_category.price - self.disc_amount) * self.days,
                            :bill_price21 => (room21.room_category.price - self.disc_amount) * self.days,
                            :bill_price22 => (room22.room_category.price - self.disc_amount) * self.days, 
                            :bill_price23 => (room23.room_category.price - self.disc_amount) * self.days,
                            :bill_price24 => (room24.room_category.price - self.disc_amount) * self.days,
                            :bill_price25 => (room25.room_category.price - self.disc_amount) * self.days,
                            :bill_price26 => (room26.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i + 
                                     self.bill_price22.to_i + self.bill_price23.to_i + self.bill_price24.to_i + 
                                     self.bill_price25.to_i + self.bill_price26.to_i  
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false 
        room22.update_column :availability, false 
        room23.update_column :availability, false
        room24.update_column :availability, false
        room25.update_column :availability, false
        room26.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill22 = bill_cont.bills.create
        bill23 = bill_cont.bills.create
        bill24 = bill_cont.bills.create
        bill25 = bill_cont.bills.create
        bill26 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i
        bill22.update_columns :days => self.days, 
                            :room_number => room22.room_number,
                            :room => room22.id,
                            :room_price => self.room_price22, 
                            :bill_price => self.days.to_i * self.room_price22.to_i
        bill23.update_columns :days => self.days,
                            :room_number => room23.room_number,
                            :room => room23.id, 
                            :room_price => self.room_price23, 
                            :bill_price => self.days.to_i * self.room_price23.to_i
        bill24.update_columns :days => self.days, 
                            :room_number => room24.room_number,
                            :room => room24.id,
                            :room_price => self.room_price24, 
                            :bill_price => self.days.to_i * self.room_price24.to_i
        bill25.update_columns :days => self.days, 
                            :room_number => room25.room_number,
                            :room => room25.id,
                            :room_price => self.room_price25, 
                            :bill_price => self.days.to_i * self.room_price25.to_i
        bill26.update_columns :days => self.days,
                            :room_number => room26.room_number,
                            :room => room26.id, 
                            :room_price => self.room_price26, 
                            :bill_price => self.days.to_i * self.room_price26.to_i                                            
      end   
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? && self.room22.present? && self.room23.present? && self.room24.present? && self.room25.present?
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      room22 = Room.find self.room22
      room23 = Room.find self.room23
      room24 = Room.find self.room24
      room25 = Room.find self.room25
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number,  
                            :room_no22 => room22.room_number, 
                            :room_no23 => room23.room_number,  
                            :room_no24 => room24.room_number, 
                            :room_no25 => room25.room_number, 
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :room_price12 => room12.room_category.price,
                            :room_price13 => room13.room_category.price,
                            :room_price14 => room14.room_category.price,
                            :room_price15 => room15.room_category.price,
                            :room_price16 => room16.room_category.price,
                            :room_price17 => room17.room_category.price,
                            :room_price18 => room18.room_category.price,
                            :room_price19 => room19.room_category.price,
                            :room_price20 => room20.room_category.price,
                            :room_price21 => room21.room_category.price,
                            :room_price22 => room22.room_category.price,
                            :room_price23 => room23.room_category.price,
                            :room_price24 => room24.room_category.price,
                            :room_price25 => room25.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days,
                            :bill_price12 => room12.room_category.price * self.days,
                            :bill_price13 => room13.room_category.price * self.days,
                            :bill_price14 => room14.room_category.price * self.days,
                            :bill_price15 => room15.room_category.price * self.days,
                            :bill_price16 => room16.room_category.price * self.days,
                            :bill_price17 => room17.room_category.price * self.days,
                            :bill_price18 => room18.room_category.price * self.days,
                            :bill_price19 => room19.room_category.price * self.days,
                            :bill_price20 => room20.room_category.price * self.days,
                            :bill_price21 => room21.room_category.price * self.days,
                            :bill_price22 => room22.room_category.price * self.days,
                            :bill_price23 => room23.room_category.price * self.days,
                            :bill_price24 => room24.room_category.price * self.days,
                            :bill_price25 => room25.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i + 
                                     self.bill_price22.to_i + self.bill_price23.to_i + self.bill_price24.to_i + 
                                     self.bill_price25.to_i  
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false
        room22.update_column :availability, false 
        room23.update_column :availability, false
        room24.update_column :availability, false
        room25.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill22 = bill_cont.bills.create
        bill23 = bill_cont.bills.create
        bill24 = bill_cont.bills.create
        bill25 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i   
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i
        bill22.update_columns :days => self.days, 
                            :room_number => room22.room_number,
                            :room => room22.id,
                            :room_price => self.room_price22, 
                            :bill_price => self.days.to_i * self.room_price22.to_i
        bill23.update_columns :days => self.days,
                            :room_number => room23.room_number,
                            :room => room23.id, 
                            :room_price => self.room_price23, 
                            :bill_price => self.days.to_i * self.room_price23.to_i
        bill24.update_columns :days => self.days, 
                            :room_number => room24.room_number,
                            :room => room24.id,
                            :room_price => self.room_price24, 
                            :bill_price => self.days.to_i * self.room_price24.to_i
        bill25.update_columns :days => self.days, 
                            :room_number => room25.room_number,
                            :room => room25.id,
                            :room_price => self.room_price25, 
                            :bill_price => self.days.to_i * self.room_price25.to_i                                                                                                                                                                                                                               
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number, 
                            :room_no22 => room22.room_number, 
                            :room_no23 => room23.room_number,  
                            :room_no24 => room24.room_number, 
                            :room_no25 => room25.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :room_price12 => room12.room_category.price - self.disc_amount,
                            :room_price13 => room13.room_category.price - self.disc_amount,
                            :room_price14 => room14.room_category.price - self.disc_amount,
                            :room_price15 => room15.room_category.price - self.disc_amount,
                            :room_price16 => room16.room_category.price - self.disc_amount,
                            :room_price17 => room17.room_category.price - self.disc_amount,
                            :room_price18 => room18.room_category.price - self.disc_amount,
                            :room_price19 => room19.room_category.price - self.disc_amount,
                            :room_price20 => room20.room_category.price - self.disc_amount,
                            :room_price21 => room21.room_category.price - self.disc_amount,
                            :room_price22 => room22.room_category.price - self.disc_amount,
                            :room_price23 => room23.room_category.price - self.disc_amount,
                            :room_price24 => room24.room_category.price - self.disc_amount,
                            :room_price25 => room25.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days,
                            :bill_price12 => (room12.room_category.price - self.disc_amount) * self.days, 
                            :bill_price13 => (room13.room_category.price - self.disc_amount) * self.days,
                            :bill_price14 => (room14.room_category.price - self.disc_amount) * self.days,
                            :bill_price15 => (room15.room_category.price - self.disc_amount) * self.days,
                            :bill_price16 => (room16.room_category.price - self.disc_amount) * self.days,
                            :bill_price17 => (room17.room_category.price - self.disc_amount) * self.days,
                            :bill_price18 => (room18.room_category.price - self.disc_amount) * self.days,
                            :bill_price19 => (room19.room_category.price - self.disc_amount) * self.days,
                            :bill_price20 => (room20.room_category.price - self.disc_amount) * self.days,
                            :bill_price21 => (room21.room_category.price - self.disc_amount) * self.days,
                            :bill_price22 => (room22.room_category.price - self.disc_amount) * self.days, 
                            :bill_price23 => (room23.room_category.price - self.disc_amount) * self.days,
                            :bill_price24 => (room24.room_category.price - self.disc_amount) * self.days,
                            :bill_price25 => (room25.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i + 
                                     self.bill_price22.to_i + self.bill_price23.to_i + self.bill_price24.to_i + 
                                     self.bill_price25.to_i 
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false 
        room22.update_column :availability, false 
        room23.update_column :availability, false
        room24.update_column :availability, false
        room25.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill22 = bill_cont.bills.create
        bill23 = bill_cont.bills.create
        bill24 = bill_cont.bills.create
        bill25 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i
        bill22.update_columns :days => self.days, 
                            :room_number => room22.room_number,
                            :room => room22.id,
                            :room_price => self.room_price22, 
                            :bill_price => self.days.to_i * self.room_price22.to_i
        bill23.update_columns :days => self.days,
                            :room_number => room23.room_number,
                            :room => room23.id, 
                            :room_price => self.room_price23, 
                            :bill_price => self.days.to_i * self.room_price23.to_i
        bill24.update_columns :days => self.days, 
                            :room_number => room24.room_number,
                            :room => room24.id,
                            :room_price => self.room_price24, 
                            :bill_price => self.days.to_i * self.room_price24.to_i
        bill25.update_columns :days => self.days, 
                            :room_number => room25.room_number,
                            :room => room25.id,
                            :room_price => self.room_price25, 
                            :bill_price => self.days.to_i * self.room_price25.to_i                                       
      end   
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? && self.room22.present? && self.room23.present? && self.room24.present? 
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      room22 = Room.find self.room22
      room23 = Room.find self.room23
      room24 = Room.find self.room24
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number,  
                            :room_no22 => room22.room_number, 
                            :room_no23 => room23.room_number,  
                            :room_no24 => room24.room_number, 
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :room_price12 => room12.room_category.price,
                            :room_price13 => room13.room_category.price,
                            :room_price14 => room14.room_category.price,
                            :room_price15 => room15.room_category.price,
                            :room_price16 => room16.room_category.price,
                            :room_price17 => room17.room_category.price,
                            :room_price18 => room18.room_category.price,
                            :room_price19 => room19.room_category.price,
                            :room_price20 => room20.room_category.price,
                            :room_price21 => room21.room_category.price,
                            :room_price22 => room22.room_category.price,
                            :room_price23 => room23.room_category.price,
                            :room_price24 => room24.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days,
                            :bill_price12 => room12.room_category.price * self.days,
                            :bill_price13 => room13.room_category.price * self.days,
                            :bill_price14 => room14.room_category.price * self.days,
                            :bill_price15 => room15.room_category.price * self.days,
                            :bill_price16 => room16.room_category.price * self.days,
                            :bill_price17 => room17.room_category.price * self.days,
                            :bill_price18 => room18.room_category.price * self.days,
                            :bill_price19 => room19.room_category.price * self.days,
                            :bill_price20 => room20.room_category.price * self.days,
                            :bill_price21 => room21.room_category.price * self.days,
                            :bill_price22 => room22.room_category.price * self.days,
                            :bill_price23 => room23.room_category.price * self.days,
                            :bill_price24 => room24.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i + 
                                     self.bill_price22.to_i + self.bill_price23.to_i + self.bill_price24.to_i 
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false
        room22.update_column :availability, false 
        room23.update_column :availability, false
        room24.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill22 = bill_cont.bills.create
        bill23 = bill_cont.bills.create
        bill24 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i   
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i
        bill22.update_columns :days => self.days, 
                            :room_number => room22.room_number,
                            :room => room22.id,
                            :room_price => self.room_price22, 
                            :bill_price => self.days.to_i * self.room_price22.to_i
        bill23.update_columns :days => self.days,
                            :room_number => room23.room_number,
                            :room => room23.id, 
                            :room_price => self.room_price23, 
                            :bill_price => self.days.to_i * self.room_price23.to_i
        bill24.update_columns :days => self.days, 
                            :room_number => room24.room_number,
                            :room => room24.id,
                            :room_price => self.room_price24, 
                            :bill_price => self.days.to_i * self.room_price24.to_i                                                                                                                                                                                                                              
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number, 
                            :room_no22 => room22.room_number, 
                            :room_no23 => room23.room_number,  
                            :room_no24 => room24.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :room_price12 => room12.room_category.price - self.disc_amount,
                            :room_price13 => room13.room_category.price - self.disc_amount,
                            :room_price14 => room14.room_category.price - self.disc_amount,
                            :room_price15 => room15.room_category.price - self.disc_amount,
                            :room_price16 => room16.room_category.price - self.disc_amount,
                            :room_price17 => room17.room_category.price - self.disc_amount,
                            :room_price18 => room18.room_category.price - self.disc_amount,
                            :room_price19 => room19.room_category.price - self.disc_amount,
                            :room_price20 => room20.room_category.price - self.disc_amount,
                            :room_price21 => room21.room_category.price - self.disc_amount,
                            :room_price22 => room22.room_category.price - self.disc_amount,
                            :room_price23 => room23.room_category.price - self.disc_amount,
                            :room_price24 => room24.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days,
                            :bill_price12 => (room12.room_category.price - self.disc_amount) * self.days, 
                            :bill_price13 => (room13.room_category.price - self.disc_amount) * self.days,
                            :bill_price14 => (room14.room_category.price - self.disc_amount) * self.days,
                            :bill_price15 => (room15.room_category.price - self.disc_amount) * self.days,
                            :bill_price16 => (room16.room_category.price - self.disc_amount) * self.days,
                            :bill_price17 => (room17.room_category.price - self.disc_amount) * self.days,
                            :bill_price18 => (room18.room_category.price - self.disc_amount) * self.days,
                            :bill_price19 => (room19.room_category.price - self.disc_amount) * self.days,
                            :bill_price20 => (room20.room_category.price - self.disc_amount) * self.days,
                            :bill_price21 => (room21.room_category.price - self.disc_amount) * self.days,
                            :bill_price22 => (room22.room_category.price - self.disc_amount) * self.days, 
                            :bill_price23 => (room23.room_category.price - self.disc_amount) * self.days,
                            :bill_price24 => (room24.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i + 
                                     self.bill_price22.to_i + self.bill_price23.to_i + self.bill_price24.to_i
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false 
        room22.update_column :availability, false 
        room23.update_column :availability, false
        room24.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill22 = bill_cont.bills.create
        bill23 = bill_cont.bills.create
        bill24 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i
        bill22.update_columns :days => self.days, 
                            :room_number => room22.room_number,
                            :room => room22.id,
                            :room_price => self.room_price22, 
                            :bill_price => self.days.to_i * self.room_price22.to_i
        bill23.update_columns :days => self.days,
                            :room_number => room23.room_number,
                            :room => room23.id, 
                            :room_price => self.room_price23, 
                            :bill_price => self.days.to_i * self.room_price23.to_i
        bill24.update_columns :days => self.days, 
                            :room_number => room24.room_number,
                            :room => room24.id,
                            :room_price => self.room_price24, 
                            :bill_price => self.days.to_i * self.room_price24.to_i                                     
      end   
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? && self.room22.present? && self.room23.present? 
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      room22 = Room.find self.room22
      room23 = Room.find self.room23
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number,  
                            :room_no22 => room22.room_number, 
                            :room_no23 => room23.room_number,  
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :room_price12 => room12.room_category.price,
                            :room_price13 => room13.room_category.price,
                            :room_price14 => room14.room_category.price,
                            :room_price15 => room15.room_category.price,
                            :room_price16 => room16.room_category.price,
                            :room_price17 => room17.room_category.price,
                            :room_price18 => room18.room_category.price,
                            :room_price19 => room19.room_category.price,
                            :room_price20 => room20.room_category.price,
                            :room_price21 => room21.room_category.price,
                            :room_price22 => room22.room_category.price,
                            :room_price23 => room23.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days,
                            :bill_price12 => room12.room_category.price * self.days,
                            :bill_price13 => room13.room_category.price * self.days,
                            :bill_price14 => room14.room_category.price * self.days,
                            :bill_price15 => room15.room_category.price * self.days,
                            :bill_price16 => room16.room_category.price * self.days,
                            :bill_price17 => room17.room_category.price * self.days,
                            :bill_price18 => room18.room_category.price * self.days,
                            :bill_price19 => room19.room_category.price * self.days,
                            :bill_price20 => room20.room_category.price * self.days,
                            :bill_price21 => room21.room_category.price * self.days,
                            :bill_price22 => room22.room_category.price * self.days,
                            :bill_price23 => room23.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i + 
                                     self.bill_price22.to_i + self.bill_price23.to_i 
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false
        room22.update_column :availability, false 
        room23.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill22 = bill_cont.bills.create
        bill23 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i   
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i
        bill22.update_columns :days => self.days, 
                            :room_number => room22.room_number,
                            :room => room22.id,
                            :room_price => self.room_price22, 
                            :bill_price => self.days.to_i * self.room_price22.to_i
        bill23.update_columns :days => self.days,
                            :room_number => room23.room_number,
                            :room => room23.id, 
                            :room_price => self.room_price23, 
                            :bill_price => self.days.to_i * self.room_price23.to_i                                                                                                                                                                                                                                
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number, 
                            :room_no22 => room22.room_number, 
                            :room_no23 => room23.room_number,  
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :room_price12 => room12.room_category.price - self.disc_amount,
                            :room_price13 => room13.room_category.price - self.disc_amount,
                            :room_price14 => room14.room_category.price - self.disc_amount,
                            :room_price15 => room15.room_category.price - self.disc_amount,
                            :room_price16 => room16.room_category.price - self.disc_amount,
                            :room_price17 => room17.room_category.price - self.disc_amount,
                            :room_price18 => room18.room_category.price - self.disc_amount,
                            :room_price19 => room19.room_category.price - self.disc_amount,
                            :room_price20 => room20.room_category.price - self.disc_amount,
                            :room_price21 => room21.room_category.price - self.disc_amount,
                            :room_price22 => room22.room_category.price - self.disc_amount,
                            :room_price23 => room23.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days,
                            :bill_price12 => (room12.room_category.price - self.disc_amount) * self.days, 
                            :bill_price13 => (room13.room_category.price - self.disc_amount) * self.days,
                            :bill_price14 => (room14.room_category.price - self.disc_amount) * self.days,
                            :bill_price15 => (room15.room_category.price - self.disc_amount) * self.days,
                            :bill_price16 => (room16.room_category.price - self.disc_amount) * self.days,
                            :bill_price17 => (room17.room_category.price - self.disc_amount) * self.days,
                            :bill_price18 => (room18.room_category.price - self.disc_amount) * self.days,
                            :bill_price19 => (room19.room_category.price - self.disc_amount) * self.days,
                            :bill_price20 => (room20.room_category.price - self.disc_amount) * self.days,
                            :bill_price21 => (room21.room_category.price - self.disc_amount) * self.days,
                            :bill_price22 => (room22.room_category.price - self.disc_amount) * self.days, 
                            :bill_price23 => (room23.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i + 
                                     self.bill_price22.to_i + self.bill_price23.to_i 
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false 
        room22.update_column :availability, false 
        room23.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill22 = bill_cont.bills.create
        bill23 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i
        bill22.update_columns :days => self.days, 
                            :room_number => room22.room_number,
                            :room => room22.id,
                            :room_price => self.room_price22, 
                            :bill_price => self.days.to_i * self.room_price22.to_i
        bill23.update_columns :days => self.days,
                            :room_number => room23.room_number,
                            :room => room23.id, 
                            :room_price => self.room_price23, 
                            :bill_price => self.days.to_i * self.room_price23.to_i                                           
      end   
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? && self.room22.present? 
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      room22 = Room.find self.room22
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number,  
                            :room_no22 => room22.room_number, 
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :room_price12 => room12.room_category.price,
                            :room_price13 => room13.room_category.price,
                            :room_price14 => room14.room_category.price,
                            :room_price15 => room15.room_category.price,
                            :room_price16 => room16.room_category.price,
                            :room_price17 => room17.room_category.price,
                            :room_price18 => room18.room_category.price,
                            :room_price19 => room19.room_category.price,
                            :room_price20 => room20.room_category.price,
                            :room_price21 => room21.room_category.price,
                            :room_price22 => room22.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days,
                            :bill_price12 => room12.room_category.price * self.days,
                            :bill_price13 => room13.room_category.price * self.days,
                            :bill_price14 => room14.room_category.price * self.days,
                            :bill_price15 => room15.room_category.price * self.days,
                            :bill_price16 => room16.room_category.price * self.days,
                            :bill_price17 => room17.room_category.price * self.days,
                            :bill_price18 => room18.room_category.price * self.days,
                            :bill_price19 => room19.room_category.price * self.days,
                            :bill_price20 => room20.room_category.price * self.days,
                            :bill_price21 => room21.room_category.price * self.days,
                            :bill_price22 => room22.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i + 
                                     self.bill_price22.to_i 
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false
        room22.update_column :availability, false 
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill22 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i   
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i
        bill22.update_columns :days => self.days, 
                            :room_number => room22.room_number,
                            :room => room22.id,
                            :room_price => self.room_price22, 
                            :bill_price => self.days.to_i * self.room_price22.to_i                                                                                                                                                                                                                                  
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number, 
                            :room_no22 => room22.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :room_price12 => room12.room_category.price - self.disc_amount,
                            :room_price13 => room13.room_category.price - self.disc_amount,
                            :room_price14 => room14.room_category.price - self.disc_amount,
                            :room_price15 => room15.room_category.price - self.disc_amount,
                            :room_price16 => room16.room_category.price - self.disc_amount,
                            :room_price17 => room17.room_category.price - self.disc_amount,
                            :room_price18 => room18.room_category.price - self.disc_amount,
                            :room_price19 => room19.room_category.price - self.disc_amount,
                            :room_price20 => room20.room_category.price - self.disc_amount,
                            :room_price21 => room21.room_category.price - self.disc_amount,
                            :room_price22 => room22.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days,
                            :bill_price12 => (room12.room_category.price - self.disc_amount) * self.days, 
                            :bill_price13 => (room13.room_category.price - self.disc_amount) * self.days,
                            :bill_price14 => (room14.room_category.price - self.disc_amount) * self.days,
                            :bill_price15 => (room15.room_category.price - self.disc_amount) * self.days,
                            :bill_price16 => (room16.room_category.price - self.disc_amount) * self.days,
                            :bill_price17 => (room17.room_category.price - self.disc_amount) * self.days,
                            :bill_price18 => (room18.room_category.price - self.disc_amount) * self.days,
                            :bill_price19 => (room19.room_category.price - self.disc_amount) * self.days,
                            :bill_price20 => (room20.room_category.price - self.disc_amount) * self.days,
                            :bill_price21 => (room21.room_category.price - self.disc_amount) * self.days,
                            :bill_price22 => (room22.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i + 
                                     self.bill_price22.to_i 
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false 
        room22.update_column :availability, false 
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill22 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i
        bill22.update_columns :days => self.days, 
                            :room_number => room22.room_number,
                            :room => room22.id,
                            :room_price => self.room_price22, 
                            :bill_price => self.days.to_i * self.room_price22.to_i                                          
      end   
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? 
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number,  
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :room_price12 => room12.room_category.price,
                            :room_price13 => room13.room_category.price,
                            :room_price14 => room14.room_category.price,
                            :room_price15 => room15.room_category.price,
                            :room_price16 => room16.room_category.price,
                            :room_price17 => room17.room_category.price,
                            :room_price18 => room18.room_category.price,
                            :room_price19 => room19.room_category.price,
                            :room_price20 => room20.room_category.price,
                            :room_price21 => room21.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days,
                            :bill_price12 => room12.room_category.price * self.days,
                            :bill_price13 => room13.room_category.price * self.days,
                            :bill_price14 => room14.room_category.price * self.days,
                            :bill_price15 => room15.room_category.price * self.days,
                            :bill_price16 => room16.room_category.price * self.days,
                            :bill_price17 => room17.room_category.price * self.days,
                            :bill_price18 => room18.room_category.price * self.days,
                            :bill_price19 => room19.room_category.price * self.days,
                            :bill_price20 => room20.room_category.price * self.days,
                            :bill_price21 => room21.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i 
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i   
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i                                                                                                                                                                                                                                    
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_no21 => room21.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :room_price12 => room12.room_category.price - self.disc_amount,
                            :room_price13 => room13.room_category.price - self.disc_amount,
                            :room_price14 => room14.room_category.price - self.disc_amount,
                            :room_price15 => room15.room_category.price - self.disc_amount,
                            :room_price16 => room16.room_category.price - self.disc_amount,
                            :room_price17 => room17.room_category.price - self.disc_amount,
                            :room_price18 => room18.room_category.price - self.disc_amount,
                            :room_price19 => room19.room_category.price - self.disc_amount,
                            :room_price20 => room20.room_category.price - self.disc_amount,
                            :room_price21 => room21.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days,
                            :bill_price12 => (room12.room_category.price - self.disc_amount) * self.days, 
                            :bill_price13 => (room13.room_category.price - self.disc_amount) * self.days,
                            :bill_price14 => (room14.room_category.price - self.disc_amount) * self.days,
                            :bill_price15 => (room15.room_category.price - self.disc_amount) * self.days,
                            :bill_price16 => (room16.room_category.price - self.disc_amount) * self.days,
                            :bill_price17 => (room17.room_category.price - self.disc_amount) * self.days,
                            :bill_price18 => (room18.room_category.price - self.disc_amount) * self.days,
                            :bill_price19 => (room19.room_category.price - self.disc_amount) * self.days,
                            :bill_price20 => (room20.room_category.price - self.disc_amount) * self.days,
                            :bill_price21 => (room21.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i + self.bill_price21.to_i 
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        room21.update_column :availability, false 
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill21 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i
        bill21.update_columns :days => self.days, 
                            :room_number => room21.room_number,
                            :room => room21.id,
                            :room_price => self.room_price21,
                            :bill_price => self.days.to_i * self.room_price21.to_i                                       
      end   
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present?
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :room_price12 => room12.room_category.price,
                            :room_price13 => room13.room_category.price,
                            :room_price14 => room14.room_category.price,
                            :room_price15 => room15.room_category.price,
                            :room_price16 => room16.room_category.price,
                            :room_price17 => room17.room_category.price,
                            :room_price18 => room18.room_category.price,
                            :room_price19 => room19.room_category.price,
                            :room_price20 => room20.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days,
                            :bill_price12 => room12.room_category.price * self.days,
                            :bill_price13 => room13.room_category.price * self.days,
                            :bill_price14 => room14.room_category.price * self.days,
                            :bill_price15 => room15.room_category.price * self.days,
                            :bill_price16 => room16.room_category.price * self.days,
                            :bill_price17 => room17.room_category.price * self.days,
                            :bill_price18 => room18.room_category.price * self.days,
                            :bill_price19 => room19.room_category.price * self.days,
                            :bill_price20 => room20.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i                                                                                                                                                                                                                                    
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_no20 => room20.room_number,
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :room_price12 => room12.room_category.price - self.disc_amount,
                            :room_price13 => room13.room_category.price - self.disc_amount,
                            :room_price14 => room14.room_category.price - self.disc_amount,
                            :room_price15 => room15.room_category.price - self.disc_amount,
                            :room_price16 => room16.room_category.price - self.disc_amount,
                            :room_price17 => room17.room_category.price - self.disc_amount,
                            :room_price18 => room18.room_category.price - self.disc_amount,
                            :room_price19 => room19.room_category.price - self.disc_amount,
                            :room_price20 => room20.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days,
                            :bill_price12 => (room12.room_category.price - self.disc_amount) * self.days, 
                            :bill_price13 => (room13.room_category.price - self.disc_amount) * self.days,
                            :bill_price14 => (room14.room_category.price - self.disc_amount) * self.days,
                            :bill_price15 => (room15.room_category.price - self.disc_amount) * self.days,
                            :bill_price16 => (room16.room_category.price - self.disc_amount) * self.days,
                            :bill_price17 => (room17.room_category.price - self.disc_amount) * self.days,
                            :bill_price18 => (room18.room_category.price - self.disc_amount) * self.days,
                            :bill_price19 => (room19.room_category.price - self.disc_amount) * self.days,
                            :bill_price20 => (room20.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i + self.bill_price20.to_i
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        room20.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill20 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
        bill20.update_columns :days => self.days, 
                            :room_number => room20.room_number,
                            :room => room20.id,
                            :room_price => self.room_price20, 
                            :bill_price => self.days.to_i * self.room_price20.to_i                                      
      end   
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? 
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :room_price12 => room12.room_category.price,
                            :room_price13 => room13.room_category.price,
                            :room_price14 => room14.room_category.price,
                            :room_price15 => room15.room_category.price,
                            :room_price16 => room16.room_category.price,
                            :room_price17 => room17.room_category.price,
                            :room_price18 => room18.room_category.price,
                            :room_price19 => room19.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days,
                            :bill_price12 => room12.room_category.price * self.days,
                            :bill_price13 => room13.room_category.price * self.days,
                            :bill_price14 => room14.room_category.price * self.days,
                            :bill_price15 => room15.room_category.price * self.days,
                            :bill_price16 => room16.room_category.price * self.days,
                            :bill_price17 => room17.room_category.price * self.days,
                            :bill_price18 => room18.room_category.price * self.days,
                            :bill_price19 => room19.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i 
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i                                                                                                                                                                                                                                       
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_no19 => room19.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :room_price12 => room12.room_category.price - self.disc_amount,
                            :room_price13 => room13.room_category.price - self.disc_amount,
                            :room_price14 => room14.room_category.price - self.disc_amount,
                            :room_price15 => room15.room_category.price - self.disc_amount,
                            :room_price16 => room16.room_category.price - self.disc_amount,
                            :room_price17 => room17.room_category.price - self.disc_amount,
                            :room_price18 => room18.room_category.price - self.disc_amount,
                            :room_price19 => room19.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days,
                            :bill_price12 => (room12.room_category.price - self.disc_amount) * self.days, 
                            :bill_price13 => (room13.room_category.price - self.disc_amount) * self.days,
                            :bill_price14 => (room14.room_category.price - self.disc_amount) * self.days,
                            :bill_price15 => (room15.room_category.price - self.disc_amount) * self.days,
                            :bill_price16 => (room16.room_category.price - self.disc_amount) * self.days,
                            :bill_price17 => (room17.room_category.price - self.disc_amount) * self.days,
                            :bill_price18 => (room18.room_category.price - self.disc_amount) * self.days,
                            :bill_price19 => (room19.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i + 
                                     self.bill_price19.to_i 
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        room19.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill19 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
        bill19.update_columns :days => self.days, 
                            :room_number => room19.room_number,
                            :room => room19.id,
                            :room_price => self.room_price19, 
                            :bill_price => self.days.to_i * self.room_price19.to_i      
      end   
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? 
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :room_price12 => room12.room_category.price,
                            :room_price13 => room13.room_category.price,
                            :room_price14 => room14.room_category.price,
                            :room_price15 => room15.room_category.price,
                            :room_price16 => room16.room_category.price,
                            :room_price17 => room17.room_category.price,
                            :room_price18 => room18.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days,
                            :bill_price12 => room12.room_category.price * self.days,
                            :bill_price13 => room13.room_category.price * self.days,
                            :bill_price14 => room14.room_category.price * self.days,
                            :bill_price15 => room15.room_category.price * self.days,
                            :bill_price16 => room16.room_category.price * self.days,
                            :bill_price17 => room17.room_category.price * self.days,
                            :bill_price18 => room18.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i  
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i                                                                                                                                                                                                                                
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_no18 => room18.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :room_price12 => room12.room_category.price - self.disc_amount,
                            :room_price13 => room13.room_category.price - self.disc_amount,
                            :room_price14 => room14.room_category.price - self.disc_amount,
                            :room_price15 => room15.room_category.price - self.disc_amount,
                            :room_price16 => room16.room_category.price - self.disc_amount,
                            :room_price17 => room17.room_category.price - self.disc_amount,
                            :room_price18 => room18.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days,
                            :bill_price12 => (room12.room_category.price - self.disc_amount) * self.days, 
                            :bill_price13 => (room13.room_category.price - self.disc_amount) * self.days,
                            :bill_price14 => (room14.room_category.price - self.disc_amount) * self.days,
                            :bill_price15 => (room15.room_category.price - self.disc_amount) * self.days,
                            :bill_price16 => (room16.room_category.price - self.disc_amount) * self.days,
                            :bill_price17 => (room17.room_category.price - self.disc_amount) * self.days,
                            :bill_price18 => (room18.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i + self.bill_price18.to_i 
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        room18.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill18 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
        bill18.update_columns :days => self.days,
                            :room_number => room18.room_number,
                            :room => room18.id, 
                            :room_price => self.room_price18, 
                            :bill_price => self.days.to_i * self.room_price18.to_i
      end        
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present? 
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :room_price12 => room12.room_category.price,
                            :room_price13 => room13.room_category.price,
                            :room_price14 => room14.room_category.price,
                            :room_price15 => room15.room_category.price,
                            :room_price16 => room16.room_category.price,
                            :room_price17 => room17.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days,
                            :bill_price12 => room12.room_category.price * self.days,
                            :bill_price13 => room13.room_category.price * self.days,
                            :bill_price14 => room14.room_category.price * self.days,
                            :bill_price15 => room15.room_category.price * self.days,
                            :bill_price16 => room16.room_category.price * self.days,
                            :bill_price17 => room17.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i                                                                                                                                                                                                                             
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_no17 => room17.room_number,  
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :room_price12 => room12.room_category.price - self.disc_amount,
                            :room_price13 => room13.room_category.price - self.disc_amount,
                            :room_price14 => room14.room_category.price - self.disc_amount,
                            :room_price15 => room15.room_category.price - self.disc_amount,
                            :room_price16 => room16.room_category.price - self.disc_amount,
                            :room_price17 => room17.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days,
                            :bill_price12 => (room12.room_category.price - self.disc_amount) * self.days, 
                            :bill_price13 => (room13.room_category.price - self.disc_amount) * self.days,
                            :bill_price14 => (room14.room_category.price - self.disc_amount) * self.days,
                            :bill_price15 => (room15.room_category.price - self.disc_amount) * self.days,
                            :bill_price16 => (room16.room_category.price - self.disc_amount) * self.days,
                            :bill_price17 => (room17.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i + self.bill_price17.to_i
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        room17.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill17 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
        bill17.update_columns :days => self.days, 
                            :room_number => room17.room_number,
                            :room => room17.id,
                            :room_price => self.room_price17, 
                            :bill_price => self.days.to_i * self.room_price17.to_i
      end 
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present?
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :room_price12 => room12.room_category.price,
                            :room_price13 => room13.room_category.price,
                            :room_price14 => room14.room_category.price,
                            :room_price15 => room15.room_category.price,
                            :room_price16 => room16.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days,
                            :bill_price12 => room12.room_category.price * self.days,
                            :bill_price13 => room13.room_category.price * self.days,
                            :bill_price14 => room14.room_category.price * self.days,
                            :bill_price15 => room15.room_category.price * self.days,
                            :bill_price16 => room16.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i                                                                                                                                                                                                                           
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_no16 => room16.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :room_price12 => room12.room_category.price - self.disc_amount,
                            :room_price13 => room13.room_category.price - self.disc_amount,
                            :room_price14 => room14.room_category.price - self.disc_amount,
                            :room_price15 => room15.room_category.price - self.disc_amount,
                            :room_price16 => room16.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days,
                            :bill_price12 => (room12.room_category.price - self.disc_amount) * self.days, 
                            :bill_price13 => (room13.room_category.price - self.disc_amount) * self.days,
                            :bill_price14 => (room14.room_category.price - self.disc_amount) * self.days,
                            :bill_price15 => (room15.room_category.price - self.disc_amount) * self.days,
                            :bill_price16 => (room16.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i + 
                                     self.bill_price16.to_i 
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        room16.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill16 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
        bill16.update_columns :days => self.days,
                            :room_number => room16.room_number,
                            :room => room16.id, 
                            :room_price => self.room_price16, 
                            :bill_price => self.days.to_i * self.room_price16.to_i
      end 
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present? 
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :room_price12 => room12.room_category.price,
                            :room_price13 => room13.room_category.price,
                            :room_price14 => room14.room_category.price,
                            :room_price15 => room15.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days,
                            :bill_price12 => room12.room_category.price * self.days,
                            :bill_price13 => room13.room_category.price * self.days,
                            :bill_price14 => room14.room_category.price * self.days,
                            :bill_price15 => room15.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i  
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i                                                                                                                                                                                                                           
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_no15 => room15.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :room_price12 => room12.room_category.price - self.disc_amount,
                            :room_price13 => room13.room_category.price - self.disc_amount,
                            :room_price14 => room14.room_category.price - self.disc_amount,
                            :room_price15 => room15.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days,
                            :bill_price12 => (room12.room_category.price - self.disc_amount) * self.days, 
                            :bill_price13 => (room13.room_category.price - self.disc_amount) * self.days,
                            :bill_price14 => (room14.room_category.price - self.disc_amount) * self.days,
                            :bill_price15 => (room15.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i + self.bill_price15.to_i 
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        room15.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill15 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
        bill15.update_columns :days => self.days, 
                            :room_number => room15.room_number,
                            :room => room15.id,
                            :room_price => self.room_price15, 
                            :bill_price => self.days.to_i * self.room_price15.to_i
      end 
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present?
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :room_price12 => room12.room_category.price,
                            :room_price13 => room13.room_category.price,
                            :room_price14 => room14.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days,
                            :bill_price12 => room12.room_category.price * self.days,
                            :bill_price13 => room13.room_category.price * self.days,
                            :bill_price14 => room14.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i                                                                                                                                                                                                                           
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_no14 => room14.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :room_price12 => room12.room_category.price - self.disc_amount,
                            :room_price13 => room13.room_category.price - self.disc_amount,
                            :room_price14 => room14.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days,
                            :bill_price12 => (room12.room_category.price - self.disc_amount) * self.days, 
                            :bill_price13 => (room13.room_category.price - self.disc_amount) * self.days,
                            :bill_price14 => (room14.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i + self.bill_price14.to_i
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        room12.update_column :availability, false 
        room13.update_column :availability, false
        room14.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill14 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
        bill14.update_columns :days => self.days, 
                            :room_number => room14.room_number,
                            :room => room14.id,
                            :room_price => self.room_price14, 
                            :bill_price => self.days.to_i * self.room_price14.to_i
      end 
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? 
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :room_price12 => room12.room_category.price,
                            :room_price13 => room13.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days,
                            :bill_price12 => room12.room_category.price * self.days,
                            :bill_price13 => room13.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i 
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        room12.update_column :availability, false 
        room13.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_no12 => room12.room_number, 
                            :room_no13 => room13.room_number,  
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :room_price12 => room12.room_category.price - self.disc_amount,
                            :room_price13 => room13.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days,
                            :bill_price12 => (room12.room_category.price - self.disc_amount) * self.days, 
                            :bill_price13 => (room13.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i + 
                                     self.bill_price13.to_i 
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        room12.update_column :availability, false 
        room13.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill13 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
        bill13.update_columns :days => self.days,
                            :room_number => room13.room_number,
                            :room => room13.id, 
                            :room_price => self.room_price13, 
                            :bill_price => self.days.to_i * self.room_price13.to_i
      end      
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present?
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_no12 => room12.room_number, 
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :room_price12 => room12.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days,
                            :bill_price12 => room12.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i 
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        room12.update_column :availability, false 
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_no12 => room12.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :room_price12 => room12.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days,
                            :bill_price12 => (room12.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i + self.bill_price12.to_i 
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        room12.update_column :availability, false 
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill12 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
        bill12.update_columns :days => self.days, 
                            :room_number => room12.room_number,
                            :room => room12.id,
                            :room_price => self.room_price12, 
                            :bill_price => self.days.to_i * self.room_price12.to_i
      end
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? 
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number,
                            :room_no11 => room11.room_number,  
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :room_price11 => room11.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days,
                            :bill_price11 => room11.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i  
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price11.to_i
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_no11 => room11.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :room_price11 => room11.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days,
                            :bill_price11 => (room11.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i + self.bill_price11.to_i 
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        room11.update_column :availability, false 
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill11 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i
        bill11.update_columns :days => self.days, 
                            :room_number => room11.room_number,
                            :room => room11.id,
                            :room_price => self.room_price11,
                            :bill_price => self.days.to_i * self.room_pric11e.to_i
      end                              
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present?
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :room_price10 => room10.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days,
                            :bill_price10 => room10.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i 
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i                                                                                                                                                                                              
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_no10 => room10.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :room_price10 => room10.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days, 
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days,
                            :bill_price10 => (room10.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i + 
                                     self.bill_price10.to_i 
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        room10.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill10 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i      
        bill10.update_columns :days => self.days, 
                            :room_number => room10.room_number,
                            :room => room10.id,
                            :room_price => self.room_price10, 
                            :bill_price => self.days.to_i * self.room_price10.to_i           

      end  
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present?
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :room_price9 => room9.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days,
                            :bill_price9 => room9.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i 
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i                                                                                                                                                                                             
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_no9 => room9.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :room_price9 => room9.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days,
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days,
                            :bill_price9 => (room9.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i + self.bill_price9.to_i
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        room9.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill9 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i
        bill9.update_columns :days => self.days, 
                            :room_number => room9.room_number,
                            :room => room9.id,
                            :room_price => self.room_price9, 
                            :bill_price => self.days.to_i * self.room_price9.to_i                
      end  
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present? && self.room6.present? && self.room7.present? && self.room8.present?
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number,
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :room_price8 => room8.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days,
                            :bill_price8 => room8.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i 
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i                                                                                                                                                                                     
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_no8 => room8.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :room_price8 => room8.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days,
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days,
                            :bill_price8 => (room8.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i + self.bill_price8.to_i
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        room8.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill8 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i
        bill8.update_columns :days => self.days,
                            :room_number => room8.room_number,
                            :room => room8.id, 
                            :room_price => self.room_price8, 
                            :bill_price => self.days.to_i * self.room_price8.to_i               
      end  
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present? && self.room6.present? && self.room7.present? 
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :room_price7 => room7.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days,
                            :bill_price7 => room7.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i 
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i                                                                                                                                                                              
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_no7 => room7.room_number,  
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :room_price7 => room7.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days,
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days,
                            :bill_price7 => (room7.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i + 
                                     self.bill_price7.to_i
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        room7.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill7 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i
        bill7.update_columns :days => self.days, 
                            :room_number => room7.room_number,
                            :room => room7.id,
                            :room_price => self.room_price7, 
                            :bill_price => self.days.to_i * self.room_price7.to_i              
      end  
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present?
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :room_price6 => room6.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days,
                            :bill_price6 => room6.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i 
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i                                                                                                                                                                            
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_no6 => room6.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :room_price6 => room6.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days,
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days,
                            :bill_price6 => (room6.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i + self.bill_price6.to_i 
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        room6.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill6 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i
        bill6.update_columns :days => self.days,
                            :room_number => room6.room_number,
                            :room => room6.id, 
                            :room_price => self.room_price6, 
                            :bill_price => self.days.to_i * self.room_price6.to_i            
      end  
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :room_price5 => room5.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days,
                            :bill_price5 => room5.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i 
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i                                                                                                                                                                         
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_no5 => room5.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :room_price5 => room5.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days,
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days,
                            :bill_price5 => (room5.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i + self.bill_price5.to_i 
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        room5.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill5 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i
        bill5.update_columns :days => self.days, 
                            :room_number => room5.room_number,
                            :room => room5.id,
                            :room_price => self.room_price5, 
                            :bill_price => self.days.to_i * self.room_price5.to_i       
      end  
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present?
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :room_price4 => room4.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days,
                            :bill_price4 => room4.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i 
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i                                                                                                                                                                      
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_no4 => room4.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :room_price4 => room4.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days,
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days,
                            :bill_price4 => (room4.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i + 
                                     self.bill_price4.to_i 
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        room4.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill4 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i
        bill4.update_columns :days => self.days, 
                            :room_number => room4.room_number,
                            :room => room4.id,
                            :room_price => self.room_price4, 
                            :bill_price => self.days.to_i * self.room_price4.to_i     
      end 
    elsif self.room.present? && self.room2.present? && self.room3.present?
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :room_price3 => room3.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days,
                            :bill_price3 => room3.room_category.price * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i 
        room.update_column :availability, false
        room2.update_column :availability, false 
        room3.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i                                                                                                                                                               
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_no3 => room3.room_number,  
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :room_price3 => room3.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days,
                            :bill_price3 => (room3.room_category.price - self.disc_amount) * self.days
        self.update_column  :total , self.bill_price.to_i + self.bill_price2.to_i + self.bill_price3.to_i 
        room.update_column :availability, false 
        room2.update_column :availability, false 
        room3.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill3 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i
        bill3.update_columns :days => self.days,
                            :room_number => room3.room_number,
                            :room => room3.id, 
                            :room_price => self.room_price3, 
                            :bill_price => self.days.to_i * self.room_price3.to_i   
      end 
    elsif self.room.present? && self.room2.present?
      room = Room.find self.room
      room2 = Room.find self.room2
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_price => room.room_category.price,
                            :room_price2 => room2.room_category.price,
                            :bill_price => room.room_category.price * self.days,
                            :bill_price2 => room2.room_category.price * self.days
        self.update_column :total , self.bill_price.to_i + self.bill_price2.to_i
        room.update_column :availability, false
        room2.update_column :availability, false 
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i                                                                                                                                                             
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_no2 => room2.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :room_price2 => room2.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days,
                            :bill_price2 => (room2.room_category.price - self.disc_amount) * self.days
        self.update_column :total , self.bill_price.to_i + self.bill_price2.to_i
        room.update_column :availability, false 
        room2.update_column :availability, false 
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill2 = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i
        bill2.update_columns :days => self.days, 
                            :room_number => room2.room_number,
                            :room => room2.id,
                            :room_price => self.room_price2, 
                            :bill_price => self.days.to_i * self.room_price2.to_i 
      end 
    elsif self.room.present? 
      room = Room.find self.room
      if self.discount == false 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_price => room.room_category.price,
                            :bill_price => room.room_category.price * self.days
        self.update_column :total , self.bill_price.to_i 
        room.update_column :availability, false
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill  
        bill = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i                                                                                                                                                            
      elsif self.discount == true 
        self.update_columns :customer_first_name => customer.first_name, 
                            :customer_last_name => customer.last_name, 
                            :phone_number => customer.phone_number, 
                            :checked_out => false,
                            :room_number => room.room_number, 
                            :room_price => room.room_category.price - self.disc_amount,
                            :bill_price => (room.room_category.price - self.disc_amount) * self.days
        self.update_column :total , self.bill_price.to_i                    
        room.update_column :availability, false 
        # Create Bill container 
        bill_cont = customer.bill_containers.create
        bill_cont.update_columns :name => self.room_number, 
                                 :paid => false, 
                                 :room_id => self.room 
        # Create Bill 
        bill = bill_cont.bills.create
        bill.update_columns :days => self.days, 
                            :room_number => room.room_number,
                            :room => room.id,
                            :room_price => self.room_price,
                            :room_price => self.room_price, 
                            :bill_price => self.days.to_i * self.room_price.to_i
      end 
    end 
  end 

  def add_dynamic_change
    if self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? && self.room22.present? && self.room23.present? && self.room24.present? && self.room25.present?  && self.room26.present? && self.room27.present?  && self.room28.present? && self.room29.present? && self.room30.present?
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      room22 = Room.find self.room22
      room23 = Room.find self.room23
      room24 = Room.find self.room24
      room25 = Room.find self.room25
      room26 = Room.find self.room26
      room27 = Room.find self.room27
      room28 = Room.find self.room28
      room29 = Room.find self.room29
      room30 = Room.find self.room30
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      room12.update_columns :availability => true, :neatness => false
      room13.update_columns :availability => true, :neatness => false
      room14.update_columns :availability => true, :neatness => false
      room15.update_columns :availability => true, :neatness => false
      room16.update_columns :availability => true, :neatness => false
      room17.update_columns :availability => true, :neatness => false
      room18.update_columns :availability => true, :neatness => false
      room19.update_columns :availability => true, :neatness => false
      room20.update_columns :availability => true, :neatness => false
      room21.update_columns :availability => true, :neatness => false
      room22.update_columns :availability => true, :neatness => false
      room23.update_columns :availability => true, :neatness => false
      room24.update_columns :availability => true, :neatness => false
      room25.update_columns :availability => true, :neatness => false
      room26.update_columns :availability => true, :neatness => false
      room27.update_columns :availability => true, :neatness => false
      room28.update_columns :availability => true, :neatness => false
      room29.update_columns :availability => true, :neatness => false
      room30.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? && self.room22.present? && self.room23.present? && self.room24.present? && self.room25.present?  && self.room26.present? && self.room27.present?  && self.room28.present? && self.room29.present?
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      room22 = Room.find self.room22
      room23 = Room.find self.room23
      room24 = Room.find self.room24
      room25 = Room.find self.room25
      room26 = Room.find self.room26
      room27 = Room.find self.room27
      room28 = Room.find self.room28
      room29 = Room.find self.room29
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      room12.update_columns :availability => true, :neatness => false
      room13.update_columns :availability => true, :neatness => false
      room14.update_columns :availability => true, :neatness => false
      room15.update_columns :availability => true, :neatness => false
      room16.update_columns :availability => true, :neatness => false
      room17.update_columns :availability => true, :neatness => false
      room18.update_columns :availability => true, :neatness => false
      room19.update_columns :availability => true, :neatness => false
      room20.update_columns :availability => true, :neatness => false
      room21.update_columns :availability => true, :neatness => false
      room22.update_columns :availability => true, :neatness => false
      room23.update_columns :availability => true, :neatness => false
      room24.update_columns :availability => true, :neatness => false
      room25.update_columns :availability => true, :neatness => false
      room26.update_columns :availability => true, :neatness => false
      room27.update_columns :availability => true, :neatness => false
      room28.update_columns :availability => true, :neatness => false
      room29.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true  
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? && self.room22.present? && self.room23.present? && self.room24.present? && self.room25.present?  && self.room26.present? && self.room27.present?  && self.room28.present? 
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      room22 = Room.find self.room22
      room23 = Room.find self.room23
      room24 = Room.find self.room24
      room25 = Room.find self.room25
      room26 = Room.find self.room26
      room27 = Room.find self.room27
      room28 = Room.find self.room28
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      room12.update_columns :availability => true, :neatness => false
      room13.update_columns :availability => true, :neatness => false
      room14.update_columns :availability => true, :neatness => false
      room15.update_columns :availability => true, :neatness => false
      room16.update_columns :availability => true, :neatness => false
      room17.update_columns :availability => true, :neatness => false
      room18.update_columns :availability => true, :neatness => false
      room19.update_columns :availability => true, :neatness => false
      room20.update_columns :availability => true, :neatness => false
      room21.update_columns :availability => true, :neatness => false
      room22.update_columns :availability => true, :neatness => false
      room23.update_columns :availability => true, :neatness => false
      room24.update_columns :availability => true, :neatness => false
      room25.update_columns :availability => true, :neatness => false
      room26.update_columns :availability => true, :neatness => false
      room27.update_columns :availability => true, :neatness => false
      room28.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true  
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? && self.room22.present? && self.room23.present? && self.room24.present? && self.room25.present?  && self.room26.present? && self.room27.present? 
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      room22 = Room.find self.room22
      room23 = Room.find self.room23
      room24 = Room.find self.room24
      room25 = Room.find self.room25
      room26 = Room.find self.room26
      room27 = Room.find self.room27
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      room12.update_columns :availability => true, :neatness => false
      room13.update_columns :availability => true, :neatness => false
      room14.update_columns :availability => true, :neatness => false
      room15.update_columns :availability => true, :neatness => false
      room16.update_columns :availability => true, :neatness => false
      room17.update_columns :availability => true, :neatness => false
      room18.update_columns :availability => true, :neatness => false
      room19.update_columns :availability => true, :neatness => false
      room20.update_columns :availability => true, :neatness => false
      room21.update_columns :availability => true, :neatness => false
      room22.update_columns :availability => true, :neatness => false
      room23.update_columns :availability => true, :neatness => false
      room24.update_columns :availability => true, :neatness => false
      room25.update_columns :availability => true, :neatness => false
      room26.update_columns :availability => true, :neatness => false
      room27.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true  
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? && self.room22.present? && self.room23.present? && self.room24.present? && self.room25.present?  && self.room26.present?
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      room22 = Room.find self.room22
      room23 = Room.find self.room23
      room24 = Room.find self.room24
      room25 = Room.find self.room25
      room26 = Room.find self.room26
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      room12.update_columns :availability => true, :neatness => false
      room13.update_columns :availability => true, :neatness => false
      room14.update_columns :availability => true, :neatness => false
      room15.update_columns :availability => true, :neatness => false
      room16.update_columns :availability => true, :neatness => false
      room17.update_columns :availability => true, :neatness => false
      room18.update_columns :availability => true, :neatness => false
      room19.update_columns :availability => true, :neatness => false
      room20.update_columns :availability => true, :neatness => false
      room21.update_columns :availability => true, :neatness => false
      room22.update_columns :availability => true, :neatness => false
      room23.update_columns :availability => true, :neatness => false
      room24.update_columns :availability => true, :neatness => false
      room25.update_columns :availability => true, :neatness => false
      room26.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true  
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? && self.room22.present? && self.room23.present? && self.room24.present? && self.room25.present? 
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      room22 = Room.find self.room22
      room23 = Room.find self.room23
      room24 = Room.find self.room24
      room25 = Room.find self.room25
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      room12.update_columns :availability => true, :neatness => false
      room13.update_columns :availability => true, :neatness => false
      room14.update_columns :availability => true, :neatness => false
      room15.update_columns :availability => true, :neatness => false
      room16.update_columns :availability => true, :neatness => false
      room17.update_columns :availability => true, :neatness => false
      room18.update_columns :availability => true, :neatness => false
      room19.update_columns :availability => true, :neatness => false
      room20.update_columns :availability => true, :neatness => false
      room21.update_columns :availability => true, :neatness => false
      room22.update_columns :availability => true, :neatness => false
      room23.update_columns :availability => true, :neatness => false
      room24.update_columns :availability => true, :neatness => false
      room25.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true  
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? && self.room22.present? && self.room23.present? && self.room24.present? 
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      room22 = Room.find self.room22
      room23 = Room.find self.room23
      room24 = Room.find self.room24
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      room12.update_columns :availability => true, :neatness => false
      room13.update_columns :availability => true, :neatness => false
      room14.update_columns :availability => true, :neatness => false
      room15.update_columns :availability => true, :neatness => false
      room16.update_columns :availability => true, :neatness => false
      room17.update_columns :availability => true, :neatness => false
      room18.update_columns :availability => true, :neatness => false
      room19.update_columns :availability => true, :neatness => false
      room20.update_columns :availability => true, :neatness => false
      room21.update_columns :availability => true, :neatness => false
      room22.update_columns :availability => true, :neatness => false
      room23.update_columns :availability => true, :neatness => false
      room24.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true 
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? && self.room22.present? && self.room23.present? 
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      room22 = Room.find self.room22
      room23 = Room.find self.room23
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      room12.update_columns :availability => true, :neatness => false
      room13.update_columns :availability => true, :neatness => false
      room14.update_columns :availability => true, :neatness => false
      room15.update_columns :availability => true, :neatness => false
      room16.update_columns :availability => true, :neatness => false
      room17.update_columns :availability => true, :neatness => false
      room18.update_columns :availability => true, :neatness => false
      room19.update_columns :availability => true, :neatness => false
      room20.update_columns :availability => true, :neatness => false
      room21.update_columns :availability => true, :neatness => false
      room22.update_columns :availability => true, :neatness => false
      room23.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true 
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? && self.room22.present? 
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      room22 = Room.find self.room22
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      room12.update_columns :availability => true, :neatness => false
      room13.update_columns :availability => true, :neatness => false
      room14.update_columns :availability => true, :neatness => false
      room15.update_columns :availability => true, :neatness => false
      room16.update_columns :availability => true, :neatness => false
      room17.update_columns :availability => true, :neatness => false
      room18.update_columns :availability => true, :neatness => false
      room19.update_columns :availability => true, :neatness => false
      room20.update_columns :availability => true, :neatness => false
      room21.update_columns :availability => true, :neatness => false
      room22.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true   
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? && self.room21.present? 
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room21 = Room.find self.room21
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      room12.update_columns :availability => true, :neatness => false
      room13.update_columns :availability => true, :neatness => false
      room14.update_columns :availability => true, :neatness => false
      room15.update_columns :availability => true, :neatness => false
      room16.update_columns :availability => true, :neatness => false
      room17.update_columns :availability => true, :neatness => false
      room18.update_columns :availability => true, :neatness => false
      room19.update_columns :availability => true, :neatness => false
      room20.update_columns :availability => true, :neatness => false
      room21.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true  
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present? && self.room20.present? 
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room20 = Room.find self.room20
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      room12.update_columns :availability => true, :neatness => false
      room13.update_columns :availability => true, :neatness => false
      room14.update_columns :availability => true, :neatness => false
      room15.update_columns :availability => true, :neatness => false
      room16.update_columns :availability => true, :neatness => false
      room17.update_columns :availability => true, :neatness => false
      room18.update_columns :availability => true, :neatness => false
      room19.update_columns :availability => true, :neatness => false
      room20.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true  
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present? && self.room19.present?  
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room19 = Room.find self.room19
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      room12.update_columns :availability => true, :neatness => false
      room13.update_columns :availability => true, :neatness => false
      room14.update_columns :availability => true, :neatness => false
      room15.update_columns :availability => true, :neatness => false
      room16.update_columns :availability => true, :neatness => false
      room17.update_columns :availability => true, :neatness => false
      room18.update_columns :availability => true, :neatness => false
      room19.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true  
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present?  && self.room18.present?
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room18 = Room.find self.room18
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      room12.update_columns :availability => true, :neatness => false
      room13.update_columns :availability => true, :neatness => false
      room14.update_columns :availability => true, :neatness => false
      room15.update_columns :availability => true, :neatness => false
      room16.update_columns :availability => true, :neatness => false
      room17.update_columns :availability => true, :neatness => false
      room18.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true   
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present? && self.room17.present? 
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room17 = Room.find self.room17
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      room12.update_columns :availability => true, :neatness => false
      room13.update_columns :availability => true, :neatness => false
      room14.update_columns :availability => true, :neatness => false
      room15.update_columns :availability => true, :neatness => false
      room16.update_columns :availability => true, :neatness => false
      room17.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true   
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?  && self.room16.present?
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room16 = Room.find self.room16
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      room12.update_columns :availability => true, :neatness => false
      room13.update_columns :availability => true, :neatness => false
      room14.update_columns :availability => true, :neatness => false
      room15.update_columns :availability => true, :neatness => false
      room16.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true   
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? && self.room15.present?
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room15 = Room.find self.room15
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      room12.update_columns :availability => true, :neatness => false
      room13.update_columns :availability => true, :neatness => false
      room14.update_columns :availability => true, :neatness => false
      room15.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true     
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? && self.room14.present? 
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room14 = Room.find self.room14
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      room12.update_columns :availability => true, :neatness => false
      room13.update_columns :availability => true, :neatness => false
      room14.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true    
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present? && self.room13.present? 
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room13 = Room.find self.room13
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      room12.update_columns :availability => true, :neatness => false
      room13.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present? && self.room12.present?  
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room12 = Room.find self.room12
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      room12.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true      
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present? && self.room11.present?
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room11 = Room.find self.room11
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      room11.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true   
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present? && self.room10.present?
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room10 = Room.find self.room10
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      room10.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? && self.room9.present?
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room9 = Room.find self.room9
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      room9.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  && self.room8.present? 
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room8 = Room.find self.room8
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      room8.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? && self.room7.present?  
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room7 = Room.find self.room7
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      room7.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  && self.room6.present? 
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room6 = Room.find self.room6
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      room6.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present? && self.room5.present?  
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room5 = Room.find self.room5
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      room5.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true
    elsif self.room.present? && self.room2.present? && self.room3.present? && self.room4.present?  
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room4 = Room.find self.room4
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      room4.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true
    elsif self.room.present? && self.room2.present? && self.room3.present?  
      room = Room.find self.room
      room2 = Room.find self.room2
      room3 = Room.find self.room3
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      room3.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true
    elsif self.room.present? && self.room2.present?   
      room = Room.find self.room
      room2 = Room.find self.room2
      room.update_columns :availability => true, :neatness => false
      room2.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true
    elsif self.room.present? 
      room = Room.find self.room
      room.update_columns :availability => true, :neatness => false
      bill_cont = BillContainer.where( customer_id: self.customer_id, room_id: self.room, checked_out: nil ).first
      bill_cont.update_columns :checked_out => true
    end
  end   
end
