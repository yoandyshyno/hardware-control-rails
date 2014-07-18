workstation_count = @workstations.length
for workstation in @workstations do

  data = [["PC name", workstation.name],
      ["Main User", workstation.user],
      ["Network ID", "IP: " + workstation.ip + "  MAC: " + workstation.mac]]

  pdf.table(data) do
   cells.borders = []
   row(0).font_style = :bold
  end

  pdf.move_down(10)

  items = [["Update \n (Date)", "Monitor", "General HW", "Graphic Card\nNvidia 3D comp", "OS Distro\nVersion","Others"]]

  items += @reviews.where("workstation_id = ?", workstation.id).map do |item|
    [
      item.created_at.to_formatted_s(:short),
      @monitors.find(item.monitor1).brand + "\n" + @monitors.find(item.monitor2).brand,
      item.hardware,
      @graphic_cards.find(item.graphic_card_id).model,
      "Ubuntu\n" + @os_distros.find(item.os_distro_id).version,
      item.remarks
    ]
  end


  pdf.table items, :cell_style => { :font => "Times-Roman", :align => :center, :font_style => :bold }, :row_colors => ["FFFFFF","DDDDDD"], :position => :center
  
  if workstation_count > 1 then
    pdf.start_new_page(:size => "A4", :layout => :portrait)
  end
  workstation_count -= 1
end

string = "page <page> of <total>"
# Green page numbers 1 to 7
options = { :at => [pdf.bounds.right - 150, 0],
 :width => 150,
 :align => :right,
 :page_filter => (1..7),
 :start_count_at => 1,
 :color => "007700" }
pdf.number_pages string, options




