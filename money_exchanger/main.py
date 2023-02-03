import sys
from tokenize import Double
from PyQt5 import QtWidgets
from dovizarayuz import Ui_MainWindow
import requests
import json
from PyQt5 import QtGui

class myApp(QtWidgets.QMainWindow):
    def __init__(self):
        super(myApp,self).__init__()

        self.ui = Ui_MainWindow()
        self.setWindowIcon(QtGui.QIcon('icon.png'))
        self.setFixedSize(510, 470)
        
        
        self.ui.setupUi(self)
        
        comboAna = self.ui.cb_ana
        comboHedef = self.ui.cb_hedef
        comboAna.addItem('TRY')
        comboAna.addItem('EUR')
        comboAna.addItem('USD')
        comboAna.addItem('EUR')
        comboAna.addItem('GBP')
        comboAna.addItem('JPY')
        comboAna.addItem('RUB')

        comboHedef.addItem('USD')
        comboHedef.addItem('EUR')
        comboHedef.addItem('TRY')
        comboHedef.addItem('BTC')
        comboHedef.addItem('GBP')
        comboHedef.addItem('JPY')
        comboHedef.addItem('RUB')

        self.ui.btn_donustur.clicked.connect(self.makeExchange)
    def makeExchange(self):
        to = self.ui.cb_hedef.currentText()
        frm = self.ui.cb_ana.currentText()
        amn = self.ui.tb_miktar.text()
        self.ui.lbl_uyari.setText("")
        if to == frm :
            self.ui.lbl_uyari.setText("para birimleri aynı olamaz!")
            return False                     
        url = "https://api.apilayer.com/exchangerates_data/convert?to="+to+"&from="+frm+"&amount="+amn
        payload = {}
        headers= {
            "apikey": "b8w32ymW6yUpxALa9qu2qki3WaaEvQ6g"
        }
        try:
            response = json.loads(requests.request("GET", url, headers=headers, data = payload).text)
            print(amn," ",frm," " ,response["result"]," ",to," etmekte.")
            self.ui.label.setText(str(response["result"]))
            text = 'Güncel kur: '+ str(response["info"]['rate'])+'\nTarih: '+response["date"]
            self.ui.lbl_guncel.setText(text)
        except:
            self.ui.lbl_uyari.setText("Lütfen geçerli bir miktar giriniz!")
            return False
        

def app():
    app = QtWidgets.QApplication(sys.argv)
    win = myApp()
    win.show()
    sys.exit(app.exec_())
app()