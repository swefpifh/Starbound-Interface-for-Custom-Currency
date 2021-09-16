function init()
	self.myMoney1name = config.getParameter("money1name")
	self.myMoney2name = config.getParameter("money2name")
	
	widget.setText("txtMoney01", string.format(self.myMoney1name))
	widget.setText("txtMoney02", string.format(self.myMoney2name))
	
	myWalletEmpty = "Empty"
end

function CustomM01()
	if myCustomMoney1 == 0 then	myCustomMoney1 = widget.setText("yourMoney01", string.format(myWalletEmpty))
	else myCustomMoney1 = widget.setText("yourMoney01", string.format(myCustomMoney1)) end
end

function CustomM02()
	if myCustomMoney2 == 0 then myCustomMoney2 = widget.setText("yourMoney02", string.format(myWalletEmpty))
	else myCustomMoney2 = widget.setText("yourMoney02", string.format(myCustomMoney2)) end
end

function update(dt)
	myCustomMoney1 = player.currency("mymoney01")
	myCustomMoney2 = player.currency("mymoney02")
	
	CustomM01()
	CustomM02()
end