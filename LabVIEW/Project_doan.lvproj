<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Modbus Master.lvclass" Type="LVClass" URL="../../../LabVIEW-Modbus-API-master/API/Master/Modbus Master.lvclass"/>
		<Item Name="project.vi" Type="VI" URL="../project.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Image Type" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Image Type"/>
				<Item Name="IMAQ Create" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ Create"/>
				<Item Name="IMAQ Image.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/IMAQ Image.ctl"/>
				<Item Name="IMAQ ImageToArray" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ ImageToArray"/>
				<Item Name="IMAQ Overlay Rectangle" Type="VI" URL="/&lt;vilib&gt;/vision/Overlay.llb/IMAQ Overlay Rectangle"/>
				<Item Name="IMAQ Overlay Text" Type="VI" URL="/&lt;vilib&gt;/vision/Overlay.llb/IMAQ Overlay Text"/>
				<Item Name="IMAQdx.ctl" Type="VI" URL="/&lt;vilib&gt;/userdefined/High Color/IMAQdx.ctl"/>
				<Item Name="NI_Vision_Acquisition_Software.lvlib" Type="Library" URL="/&lt;vilib&gt;/vision/driver/NI_Vision_Acquisition_Software.lvlib"/>
				<Item Name="NI_Vision_Development_Module.lvlib" Type="Library" URL="/&lt;vilib&gt;/vision/NI_Vision_Development_Module.lvlib"/>
				<Item Name="VISA Flush IO Buffer Mask.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Flush IO Buffer Mask.ctl"/>
			</Item>
			<Item Name="API Main.lvlib" Type="Library" URL="../../../LabVIEW-Modbus-API-master/API/Wrapper/API Main.lvlib"/>
			<Item Name="ASCII Data Unit.lvclass" Type="LVClass" URL="../../../LabVIEW-Modbus-API-master/Transmission Data Unit/ASCII/ASCII Data Unit.lvclass"/>
			<Item Name="Bits to Bytes.vi" Type="VI" URL="../../../LabVIEW-Modbus-API-master/Utility/Bits to Bytes.vi"/>
			<Item Name="Bytes to Bits.vi" Type="VI" URL="../../../LabVIEW-Modbus-API-master/Utility/Bytes to Bits.vi"/>
			<Item Name="Bytes to U16s.vi" Type="VI" URL="../../../LabVIEW-Modbus-API-master/Utility/Bytes to U16s.vi"/>
			<Item Name="Device Data Model.lvclass" Type="LVClass" URL="../../../LabVIEW-Modbus-API-master/Data Model/Device Data Model.lvclass"/>
			<Item Name="Generate UUID.vi" Type="VI" URL="../../../LabVIEW-Modbus-API-master/Utility/Generate UUID.vi"/>
			<Item Name="IP Data Unit.lvclass" Type="LVClass" URL="../../../LabVIEW-Modbus-API-master/Transmission Data Unit/IP/IP Data Unit.lvclass"/>
			<Item Name="Master Function Definition.lvclass" Type="LVClass" URL="../../../LabVIEW-Modbus-API-master/Master Function Definition/Master Function Definition.lvclass"/>
			<Item Name="Modbus API.lvclass" Type="LVClass" URL="../../../LabVIEW-Modbus-API-master/API/Modbus API.lvclass"/>
			<Item Name="Modbus Data Unit.lvclass" Type="LVClass" URL="../../../LabVIEW-Modbus-API-master/Modbus Data Unit/Modbus Data Unit.lvclass"/>
			<Item Name="Modbus Slave.lvclass" Type="LVClass" URL="../../../LabVIEW-Modbus-API-master/API/Slave/Modbus Slave.lvclass"/>
			<Item Name="Network Master.lvclass" Type="LVClass" URL="../../../LabVIEW-Modbus-API-master/Network Protocol/Network Master/Network Master.lvclass"/>
			<Item Name="Network Protocol.lvclass" Type="LVClass" URL="../../../LabVIEW-Modbus-API-master/Network Protocol/Network Protocol.lvclass"/>
			<Item Name="Network Slave.lvclass" Type="LVClass" URL="../../../LabVIEW-Modbus-API-master/Network Protocol/Network Slave/Network Slave.lvclass"/>
			<Item Name="niimaqdx.dll" Type="Document" URL="niimaqdx.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nivision.dll" Type="Document" URL="nivision.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nivissvc.dll" Type="Document" URL="nivissvc.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="RTU Data Unit.lvclass" Type="LVClass" URL="../../../LabVIEW-Modbus-API-master/Transmission Data Unit/RTU/RTU Data Unit.lvclass"/>
			<Item Name="Serial Data Unit.lvclass" Type="LVClass" URL="../../../LabVIEW-Modbus-API-master/Transmission Data Unit/Serial Interface/Serial Data Unit.lvclass"/>
			<Item Name="Serial Master.lvclass" Type="LVClass" URL="../../../LabVIEW-Modbus-API-master/Network Protocol/Network Master/Serial/Serial Master.lvclass"/>
			<Item Name="Serial Shared Components.lvlib" Type="Library" URL="../../../LabVIEW-Modbus-API-master/Network Protocol/Serial Shared Components/Serial Shared Components.lvlib"/>
			<Item Name="Serial Slave.lvclass" Type="LVClass" URL="../../../LabVIEW-Modbus-API-master/Network Protocol/Network Slave/Serial/Serial Slave.lvclass"/>
			<Item Name="Standard Data Model.lvclass" Type="LVClass" URL="../../../LabVIEW-Modbus-API-master/Data Model/Standard Data Model/Standard Data Model.lvclass"/>
			<Item Name="TCP Master.lvclass" Type="LVClass" URL="../../../LabVIEW-Modbus-API-master/Network Protocol/Network Master/TCP/TCP Master.lvclass"/>
			<Item Name="TCP Shared Components.lvlib" Type="Library" URL="../../../LabVIEW-Modbus-API-master/Network Protocol/TCP Shared Components/TCP Shared Components.lvlib"/>
			<Item Name="TCP Slave.lvclass" Type="LVClass" URL="../../../LabVIEW-Modbus-API-master/Network Protocol/Network Slave/TCP/TCP Slave.lvclass"/>
			<Item Name="Transmission Data Unit.lvclass" Type="LVClass" URL="../../../LabVIEW-Modbus-API-master/Transmission Data Unit/Transmission Data Unit.lvclass"/>
			<Item Name="U16s to Bytes.vi" Type="VI" URL="../../../LabVIEW-Modbus-API-master/Utility/U16s to Bytes.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
