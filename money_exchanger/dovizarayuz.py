# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '.\doviz.ui'
#
# Created by: PyQt5 UI code generator 5.15.4
#
# WARNING: Any manual changes made to this file will be lost when pyuic5 is
# run again.  Do not edit this file unless you know what you are doing.


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(509, 472)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.ana = QtWidgets.QFrame(self.centralwidget)
        self.ana.setGeometry(QtCore.QRect(50, 50, 349, 161))
        self.ana.setFrameShape(QtWidgets.QFrame.StyledPanel)
        self.ana.setFrameShadow(QtWidgets.QFrame.Raised)
        self.ana.setObjectName("ana")
        self.tb_miktar = QtWidgets.QLineEdit(self.ana)
        self.tb_miktar.setGeometry(QtCore.QRect(20, 40, 121, 22))
        self.tb_miktar.setObjectName("tb_miktar")
        self.cb_ana = QtWidgets.QComboBox(self.ana)
        self.cb_ana.setGeometry(QtCore.QRect(210, 40, 73, 22))
        self.cb_ana.setObjectName("cb_ana")
        self.label_2 = QtWidgets.QLabel(self.ana)
        self.label_2.setGeometry(QtCore.QRect(20, 0, 311, 41))
        self.label_2.setObjectName("label_2")
        self.lbl_uyari = QtWidgets.QLabel(self.ana)
        self.lbl_uyari.setGeometry(QtCore.QRect(20, 70, 221, 16))
        self.lbl_uyari.setObjectName("lbl_uyari")
        self.hedef = QtWidgets.QFrame(self.centralwidget)
        self.hedef.setGeometry(QtCore.QRect(40, 150, 349, 91))
        self.hedef.setFrameShape(QtWidgets.QFrame.StyledPanel)
        self.hedef.setFrameShadow(QtWidgets.QFrame.Raised)
        self.hedef.setObjectName("hedef")
        self.cb_hedef = QtWidgets.QComboBox(self.hedef)
        self.cb_hedef.setGeometry(QtCore.QRect(230, 30, 73, 22))
        self.cb_hedef.setObjectName("cb_hedef")
        self.label = QtWidgets.QLabel(self.hedef)
        self.label.setGeometry(QtCore.QRect(50, 10, 121, 51))
        self.label.setObjectName("label")
        self.btn_donustur = QtWidgets.QPushButton(self.centralwidget)
        self.btn_donustur.setGeometry(QtCore.QRect(360, 100, 93, 81))
        self.btn_donustur.setObjectName("btn_donustur")
        self.lbl_guncel = QtWidgets.QLabel(self.centralwidget)
        self.lbl_guncel.setGeometry(QtCore.QRect(290, 320, 201, 101))
        self.lbl_guncel.setText("")
        self.lbl_guncel.setObjectName("lbl_guncel")
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 509, 26))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "ExchangeMaker"))
        self.label_2.setText(_translate("MainWindow", "D??n????t??rmek isredi??iniz d??viz miktar??n?? giriniz ."))
        self.lbl_uyari.setText(_translate("MainWindow", "*miktar 0\'dan b??y??k olmal??d??r"))
        self.label.setText(_translate("MainWindow", "0.0"))
        self.btn_donustur.setText(_translate("MainWindow", "D??n????t??r"))
