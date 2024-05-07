Advanced Mobile Programming
Practical #1
Name Sonu kahar Roll
Number 21302A0053
Subject/
Course: Advanced Mobile Programming
Topic Introduction to Android, Introduction to Android Studio IDE, Application
Fundamentals
Basic Program
1.a) Design a simple “Hello World” Program.
Activity_main:
<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout
xmlns:android="http://schemas.android.com/apk/res/android"
 xmlns:app="http://schemas.android.com/apk/res-auto"
 xmlns:tools="http://schemas.android.com/tools"
 android:layout_width="match_parent"
 android:layout_height="match_parent"
 tools:context=".MainActivity">
 <TextView
 android:layout_width="wrap_content"
 android:layout_height="wrap_content"
 android:text="Hello World!"
 app:layout_constraintBottom_toBottomOf="parent"
 app:layout_constraintEnd_toEndOf="parent"
 app:layout_constraintStart_toStartOf="parent"
 app:layout_constraintTop_toTopOf="parent" />
</androidx.constraintlayout.widget.ConstraintLayout>
MainAcitivity:
Vidyalankar School of Information Technology
package com.example.p;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
public class MainActivity extends AppCompatActivity {
 @Override
 protected void onCreate(Bundle savedInstanceState) {
 super.onCreate(savedInstanceState);
 setContentView(R.layout.activity_main);
 }
}
E.g:
Broadcast Receiver
1.b) Write a program to implement Broadcast Receiver.
Vidyalankar School of Information Technology
MainAcitivity
package com.example.practical1b_b
import android.content.Intent
import android.content.IntentFilter
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
class MainActivity : AppCompatActivity() {
 lateinit var receiver:AirplaneModeChanger
 override fun onCreate(savedInstanceState: Bundle?) {
 super.onCreate(savedInstanceState)
 setContentView(R.layout.activity_main)
 receiver= AirplaneModeChanger()
 IntentFilter(Intent.ACTION_AIRPLANE_MODE_CHANGED).also {
 registerReceiver(receiver, it)
 }
 }
 override fun onStop() {
 super.onStop()
 unregisterReceiver(receiver)
 }
}
AirplaneModeChanger (BroadcastReceiver)
package com.example.practical1b_b
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.widget.Toast
class airplanemodechange: BroadcastReceiver() {
 override fun onReceive(p0: Context?, p1: Intent?) {
 val isAirplaneEnabled = p1?.getBooleanExtra("state", false)?:return
 if (isAirplaneEnabled)
 {
 Toast.makeText(p0, "Airplane mode Enabled", Toast.LENGTH_LONG).show()
 } else
 {
 Toast.makeText(p0, "Airplane mode Disabled", Toast.LENGTH_LONG).show()
 }
 }
}
Output:
Vidyalankar School of Information Technology
Vidyalankar School of Information Technology
Vidyalankar School of Information Technology
Advanced Mobile Programming
Practical #2
Name Sonu kahar Roll Number 21302A0053
Subject/Course: Advanced Mobile Programming
Topic Programming Resources
Image and Background
2.a) Design an Activity with an image and its background colour set.
Activity_main:
<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout
xmlns:android="http://schemas.android.com/apk/res/android"
xmlns:app="http://schemas.android.com/apk/res-auto"
xmlns:tools="http://schemas.android.com/tools"
android:layout_width="match_parent"
android:layout_height="match_parent"
android:background="@color/bg"
tools:context=".MainActivity">
 <TextView
android:id="@+id/textView"
android:layout_width="wrap_content"
android:layout_height="wrap_content"
android:text="@string/krishna"
android:textColor="@color/textcolor"
app:layout_constraintBottom_toBottomOf="parent"
app:layout_constraintEnd_toEndOf="parent"
app:layout_constraintStart_toStartOf="parent"
app:layout_constraintTop_toTopOf="parent" />
 <ImageView
android:id="@+id/imageView"
android:layout_width="170dp"
android:layout_height="320dp"
app:layout_constraintBottom_toTopOf="@+id/textView"
app:layout_constraintEnd_toEndOf="parent"
app:layout_constraintStart_toStartOf="parent"
app:layout_constraintTop_toTopOf="parent"
app:srcCompat="@drawable/img1"
tools:ignore="MissingConstraints" />
 <Button
android:id="@+id/button"
android:layout_width="wrap_content"
android:layout_height="wrap_content"
android:backgroundTint="@color/buttonbg"
android:text="@string/click_me"
android:textColor="@color/textcolor"
app:layout_constraintBottom_toBottomOf="parent"
app:layout_constraintEnd_toEndOf="parent"
app:layout_constraintStart_toStartOf="parent"
app:layout_constraintTop_toBottomOf="@+id/textView"
Vidyalankar School of Information Technology
tools:ignore="MissingConstraints" />
</androidx.constraintlayout.widget.ConstraintLayout>
MainActivity:
package com.example.prac21
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
class MainActivity : AppCompatActivity() {
 override fun onCreate(savedInstanceState: Bundle?) {
 super.onCreate(savedInstanceState)
 setContentView(R.layout.activity_main)
 }
}
String:
<resources>
 <string name="My_Work">pra2.1</string>
 <string name="krishna">Krishna</string>
 <string name="click_me">Click Me</string>
</resources>
Color:
<?xml version="1.0" encoding="utf-8"?>
<resources>
 <color name="bg">#FF000000</color>
 <color name="textcolor">#FFFFFFFF</color>
 <color name="buttonbg">#FF0000</color>
</resources>
Output:
Vidyalankar School of Information Technology
On Click of a Button
2.b) Design an Activity where on Click of a button the image should
change.
MainActivity:
package com.example.pra21
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.ImageView
class MainActivity : AppCompatActivity() {
override fun onCreate(savedInstanceState: Bundle?) {
super.onCreate(savedInstanceState)
 setContentView(R.layout.activity_main)
lateinit var imageView: ImageView
lateinit var button: Button
var isImage1 = true
imageView = findViewById(R.id.imageView)
 button = findViewById(R.id.button)
 button.setOnClickListener {
// Change the image when the button is clicked
if (isImage1) {
 imageView.setImageResource(R.drawable.img2)
 } else {
 imageView.setImageResource(R.drawable.img1)
 }
// Toggle the flag to switch between images
isImage1 = !isImage1
}
}
}
Output:
Vidyalankar School of Information Technology
Vidyalankar School of Information Technology
Vidyalankar School of Information Technology
Advanced Mobile Programming
Practical #3
Name Sonu kahar Roll
Number 21302A0053
Subject/
Course: Advanced Mobile Programming
Topic Programming Activities and Fragments
Activity Life Cycle
5.a) To demonstrate the working of Activity and its Life Cycle.
package com.example.practical3b
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.view.View
class MainActivity : AppCompatActivity() {
 private val fragMgr=supportFragmentManager
 override fun onCreate(savedInstanceState: Bundle?) {
 super.onCreate(savedInstanceState)
 setContentView(R.layout.activity_main)
 }
 fun onClickLogin(view: View){
 val fragTrans = fragMgr.beginTransaction()
 fragTrans.add(R.id.frameLayout,LoginFragment())
 fragTrans.addToBackStack(null)
 fragTrans.commit()
 }
 fun onClickSignup(view: View){
 val fragTrans = fragMgr.beginTransaction()
 fragTrans.add(R.id.frameLayout,SignupFragment())
 fragTrans.addToBackStack(null)
 fragTrans.commit()
 }
}
Vidyalankar School of Information Technology

Vidyalankar School of Information Technology
Fragment Life Cycle
5.b) To demonstrate the working of Fragments and its Life Cycle.

Vidyalankar School of Information Technology
Vidyalankar School of Information Technology
Advanced Mobile Programming
Practical #4
Name Sonu kahar Roll Number 21302A0053
Subject/Course: Advanced Mobile Programming
Topic Programs related to different Layouts
 Linear Layout
4.a) To demonstrate Linear Layout.
1-activity main
<?xml version="1.0" encoding="utf-8"?>
<android.support.constraint.ConstraintLayout
xmlns:android="http://schemas.android.com/apk/res/android"
 xmlns:app="http://schemas.android.com/apk/res-auto"
 xmlns:tools="http://schemas.android.com/tools"
 android:layout_width="match_parent"
Vidyalankar School of Information Technology
 android:layout_height="match_parent"
 tools:context=".MainActivity">
 <LinearLayout
 android:id="@+id/linearLayout"
 android:layout_width="match_parent"
 android:layout_height="match_parent"
 android:orientation="horizontal"
 app:layout_constraintEnd_toEndOf="parent"
 app:layout_constraintStart_toStartOf="parent"
 app:layout_constraintBottom_toTopOf="@id/frameLayout"
 app:layout_constraintTop_toTopOf="parent">
 <Button
 android:id="@+id/button4"
 android:layout_width="wrap_content"
 android:layout_height="wrap_content"
 android:layout_weight="1"
 android:onClick="onClickLogin"
 android:text="Login" />
 <Button
 android:id="@+id/button3"
 android:layout_width="wrap_content"
 android:layout_height="wrap_content"
 android:layout_weight="1"
 android:onClick="onClickSignup"
 android:text="Signup" />
 </LinearLayout>
 <FrameLayout
 android:layout_width="match_parent"
 android:layout_height="match_parent"
 android:id="@+id/frameLayout">
 </FrameLayout>
</android.support.constraint.ConstraintLayout>
2-MainActivity.Kt
package com.example.practical3b
Vidyalankar School of Information Technology
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.view.View
class MainActivity : AppCompatActivity() {
 private val fragMgr=supportFragmentManager
 override fun onCreate(savedInstanceState: Bundle?) {
 super.onCreate(savedInstanceState)
 setContentView(R.layout.activity_main)
 }
 fun onClickLogin(view:View){
 val fragTrans=fragMgr.beginTransaction()
 fragTrans.add(R.id.frameLayout,loginFragment())
 fragTrans.addToBackStack(null)
 fragTrans.commit()
 }
 fun onClickSignup(view:View) {
 val fragTrans = fragMgr.beginTransaction()
 fragTrans.add(R.id.frameLayout, SignupFragment())
 fragTrans.addToBackStack(null)
 fragTrans.commit()
 }
}
3-loginfragment.kt
package com.example.practical3b
import android.os.Bundle
import android.support.v4.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
class loginFragment:Fragment() {
 override fun onCreateView(
 inflater: LayoutInflater,
 container: ViewGroup?,
 savedInstanceState: Bundle?
 ): View? {
 return inflater.inflate(R.layout.layout_login,container,false)
 }
}
4-signupFragment.kt
Vidyalankar School of Information Technology
package com.example.practical3b
import android.os.Bundle
import android.support.v4.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
class SignupFragment:Fragment(){
 override fun onCreateView(
 inflater: LayoutInflater,
 container: ViewGroup?,
 savedInstanceState: Bundle?
 ): View? {
 return inflater.inflate(R.layout.layout_login,container,false)
 }
}
5-value/themes.xml
<resources xmlns:tools="http://schemas.android.com/tools">
 <!-- Base application theme. -->
 <style name="Theme.Practical3B" parent="Theme.AppCompat.Light.DarkActionBar">
 <!-- Primary brand color. -->
 <item name="colorPrimary">@color/purple_500</item>
 <item name="colorPrimaryDark">@color/purple_700</item>
 <item name="colorAccent">@color/teal_200</item>
 <!-- Customize your theme here. -->
 </style>
 <style name="Theme.Practical3B.NoactionBar">
Vidyalankar School of Information Technology
 <item name="windowActionBar">false</item>
 <item name="windowNoTitle">true</item>
 </style>
 <style name="Theme.Prac3b.AppBarOverlay" parent="ThemeOverlay.AppCompat.Dark.ActionBar"/>
 <style name="Theme.Prac3b.PopupOverlay" parent="ThemeOverlay.AppCompat.Dark.ActionBar"/>
</resources>
6-nighttheme.xml
<resources xmlns:tools="http://schemas.android.com/tools">
 <!-- Base application theme. -->
 <style name="Theme.Practical3B" parent="Theme.AppCompat.Light.DarkActionBar">
 <!-- Primary brand color. -->
 <item name="colorPrimary">@color/purple_200</item>
 <item name="colorPrimaryDark">@color/purple_700</item>
 <item name="colorAccent">@color/teal_200</item>
 <!-- Customize your theme here. -->
 </style>
 <style name="Theme.Practical3B.NoactionBar">
 <item name="windowActionBar">false</item>
 <item name="windowNoTitle">true</item>
 </style>
 <style name="Theme.Prac3b.AppBarOverlay" parent="ThemeOverlay.AppCompat.Dark.ActionBar"/>
 <style name="Theme.Prac3b.PopupOverlay" parent="ThemeOverlay.AppCompat.Dark.ActionBar"/>
</resources>
7-
Vidyalankar School of Information Technology
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout
 xmlns:android="http://schemas.android.com/apk/res/android"
 android:layout_width="match_parent"
 android:layout_height="match_parent"
 android:gravity="center">
<TextView
android:id="@+id/textView"
android:layout_width="wrap_content"
android:layout_height="203dp"
android:layout_weight="1"
android:text="signup Fragment"
android:textColor="@color/teal_700"
android:background="@color/black"
android:textStyle="bold" />
</LinearLayout>
OutputVidyalankar School of Information Technology
Vidyalankar School of Information Technology
Table Layout
4.b) To demonstrate Table Layout.
MAIN.xml
<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout
xmlns:android="http://schemas.android.com/apk/res/android"
 xmlns:app="http://schemas.android.com/apk/res-auto"
 xmlns:tools="http://schemas.android.com/tools"
 android:layout_width="match_parent"
 android:layout_height="match_parent"
 tools:context=".MainActivity">
 <LinearLayout
 android:layout_width="409dp"
 android:layout_height="wrap_content"
 android:orientation="vertical"
 tools:layout_editor_absoluteX="1dp"
 tools:layout_editor_absoluteY="1dp">
 <TextView
 android:id="@+id/textView"
 android:layout_width="match_parent"
 android:layout_height="wrap_content"
 android:text="Login page" />
 <EditText
 android:layout_width="match_parent"
 android:layout_height="wrap_content"
 android:id="@+id/editname"
 android:hint="enter your name"
 android:inputType="text" />
 <EditText
 android:layout_width="match_parent"
 android:layout_height="wrap_content"
 android:id="@+id/editpass"
 android:hint="enter password"
 android:inputType="text" />
 <LinearLayout
 android:layout_width="match_parent"
 android:layout_height="match_parent"
 android:orientation="horizontal">
 <Button
 android:id="@+id/btnsubmit"
 android:layout_width="wrap_content"
 android:layout_height="wrap_content"
 android:layout_weight="1"
 android:text="SUBMIT" />
 <Button
 android:id="@+id/btnreset"
 android:layout_width="wrap_content"
Vidyalankar School of Information Technology
 android:layout_height="wrap_content"
 android:layout_weight="1"
 android:text="RESET" />
 </LinearLayout>
 </LinearLayout>
</androidx.constraintlayout.widget.ConstraintLayout>
Kt file:-
package com.example.randi1
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.Toast
abstract class MainActivity : AppCompatActivity() {
 override fun onCreate(savedInstanceState: Bundle?) {
 super.onCreate(savedInstanceState)
 setContentView(R.layout.activity_main)
 val submitbtn = findViewById<Button>(R.id.btnsubmit)
 val resetbtn = findViewById<Button>(R.id.btnreset)
 val name = findViewById<EditText>(R.id.editname)
 val pass = findViewById<EditText>(R.id.editpass)
 submitbtn.setOnClickListener() {
 Toast.makeText(this, "Data Submitted",Toast.LENGTH_SHORT).show()
 }
 resetbtn.setOnClickListener() {
 name.editableText.clear()
Vidyalankar School of Information Technology
 pass.editableText.clear()
 }
 }
}
OUTPUTVidyalankar School of Information Technology
Vidyalankar School of Information Technology
Vidyalankar School of Information Technology
Advanced Mobile Programming
Practical #5
Name Sonu kahar Roll
Number 21302A0053
Subject/
Course: Advanced Mobile Programming
Topic Programming UI Elements
Application Bar
7.a) Design a mobile application to demonstrate working of App Bar
Code:
package com.example.prac5b
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.Menu
import android.view.MenuItem
import android.widget.Toast
class MainActivity : AppCompatActivity() {
 override fun onCreate(savedInstanceState: Bundle?) {
 super.onCreate(savedInstanceState)
 setContentView(R.layout.activity_main)
 val meraBar = supportActionBar
 meraBar!!.title="Maza Navin Action Bar"
 meraBar.subtitle="Navin Ahe"
 meraBar.setIcon(R.drawable.zoro)
 meraBar.setDisplayUseLogoEnabled(true)
 meraBar.setDisplayShowHomeEnabled(true)
 }
 override fun onCreateOptionsMenu(menu: Menu?): Boolean {
 menuInflater.inflate(R.menu.menu1, menu)
 return super.onCreateOptionsMenu(menu)
 }
 override fun onOptionsItemSelected(item: MenuItem): Boolean {
 when(item.itemId){
 R.id.Copy ->Toast.makeText(this,"copy",Toast.LENGTH_LONG).show()
 R.id.Zoro ->Toast.makeText(this,"zoro",Toast.LENGTH_LONG).show()
 R.id.location ->Toast.makeText(this,"location",Toast.LENGTH_LONG).show()
Vidyalankar School of Information Technology
 R.id.search ->Toast.makeText(this,"search",Toast.LENGTH_LONG).show()
 }
 return super.onOptionsItemSelected(item)
 }
 }
XML Code:
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
 xmlns:tools="http://schemas.android.com/tools"
 package="com.example.prac5b">
 <application
 android:allowBackup="true"
 android:dataExtractionRules="@xml/data_extraction_rules"
 android:fullBackupContent="@xml/backup_rules"
 android:icon="@mipmap/ic_launcher"
 android:label="@string/app_name"
 android:roundIcon="@mipmap/ic_launcher_round"
 android:supportsRtl="true"
android:theme="@style/Theme.Prac5b"
 tools:targetApi="31">
 <activity
 android:name=".MainActivity"
 android:exported="true">
 <intent-filter>
 <action android:name="android.intent.action.MAIN" />
 <category android:name="android.intent.category.LAUNCHER" />
 </intent-filter>
 </activity>
 </application>
</manifest>
Menu code:
<?xml version="1.0" encoding="utf-8"?>
<menu xmlns:android="http://schemas.android.com/apk/res/android"
 xmlns:app="http://schemas.android.com/apk/res-auto"
 xmlns:tools="http://schemas.android.com/tools">
 <item android:id="@+id/search"
 android:title="Search"
 android:icon="@drawable/png"
 app:showAsAction="always"
 android:orderInCategory="100"/>
Vidyalankar School of Information Technology
 <item android:id="@+id/location"
 android:title="Location"
 android:icon="@drawable/img"
 app:showAsAction="ifRoom"
 android:orderInCategory="101"/>
 <item android:id="@+id/Copy"
 android:title="Copy"
 android:icon="@drawable/download"
 app:showAsAction="never"
 android:orderInCategory="102"/>
 <item android:id="@+id/Zoro"
 android:title="Zoro"
 android:icon="@drawable/zoro"
 app:showAsAction="always"
 android:orderInCategory="103"/>
</menu>
Resource Code:
<resources>
 <string name="app_name">NBS</string>
</resources>
Output:
Vidyalankar School of Information Technology

Vidyalankar School of Information Technology
Login Form
7.b) Design a mobile application to create a login form
Vidyalankar School of Information Technology
Advanced Mobile Programming
Practical #10
Name Sonu kahar Roll Number 21302A0053
Subject/Course: Advanced Mobile Programming
Topic Programming Media API and Telephone API
 Media API
10.a) To create a program to access music (media) in your mobile phone.
<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout
xmlns:android="http://schemas.android.com/apk/res/android"
xmlns:tools="http://schemas.android.com/tools"
android:layout_width="match_parent"
android:layout_height="match_parent" android:gravity="center"
android:orientation="vertical" tools:context=".MainActivity">
 <Button
 android:id="@+id/button1"
android:layout_width="wrap_content"
android:layout_height="wrap_content"
android:layout_alignParentStart="true"
android:layout_alignParentTop="true"
android:layout_marginStart="122dp"
android:layout_marginTop="61dp"
android:text="Play"
 tools:ignore="HardcodedText" />
 <Button
 android:id="@+id/button2"
android:layout_width="wrap_content"
android:layout_height="wrap_content"
android:layout_alignStart="@+id/button1"
android:layout_alignParentTop="true"
android:layout_marginTop="128dp"
android:text="Pause" />
 <Button
 android:id="@+id/button3"
android:layout_width="wrap_content"
android:layout_height="wrap_content"
android:layout_alignStart="@+id/button1"
android:layout_alignParentTop="true"
android:layout_marginTop="205dp"
android:text="Continue" />
 <Button
 android:text="Stop" android:layout_width="wrap_content"
android:layout_height="wrap_content" android:layout_alignParentBottom="true"
android:id="@+id/button4"
 android:layout_alignStart="@+id/button1" android:layout_marginBottom="186dp"/>
 <Button
 android:text="Button" android:layout_width="wrap_content"
android:layout_height="wrap_content" android:layout_alignParentBottom="true"
android:id="@+id/button5" android:layout_alignStart="@+id/button1"
android:layout_marginBottom="100dp"/>
</RelativeLayout>
Vidyalankar School of Information Technology
MainAcitivity.kt
package com.example.music
import android.os.Bundle import android.media.MediaPlayer import
android.widget.Button
import androidx.appcompat.app.AppCompatActivity
class MainActivity : AppCompatActivity() { private lateinit var mp:
MediaPlayer
 override fun onCreate(savedInstanceState: Bundle?) {
super.onCreate(savedInstanceState) setContentView(R.layout.activity_main)
mp = MediaPlayer.create (this,R.raw.song1) mp = MediaPlayer.create
(this,R.raw.song) var position = 0 val button1 = findViewById
(R.id.button1) as Button val button2 = findViewById (R.id.button2) as Button
val button3 = findViewById (R.id.button3) as Button val button4 = findViewById
(R.id.button4) as Button val button5 = findViewById (R.id.button5) as Button
button1.setOnClickListener { mp.start ()
 if (button5.text == "Do not play in a circular way") mp.isLooping
= false else
 mp.isLooping = true
 } button2.setOnClickListener { if
(mp.isPlaying ()) {
 position = mp.getCurrentPosition () mp.pause ()
 } }
 button3.setOnClickListener { if (mp.isPlaying () ==
false) { mp.seekTo (position) mp.start ()
 } }
 button4.setOnClickListener { mp.pause ()
position = 0 mp.seekTo (0)
 }
 button5.setOnClickListener {
 if (button5.text == "Do not play in a circular way")
button5.setText ("Play in circular form") else
 button5.setText ("Do not play in circular form")
Vidyalankar School of Information Technology
Telephone API
10.b) To create a program that uses the calling feature of android mobile
phones.
Vidyalankar School of Information Technology

Acitivity_main.xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout
xmlns:android="http://schemas.android.com/apk/res/android"
xmlns:app="http://schemas.android.com/apk/res-auto"
xmlns:tools="http://schemas.android.com/tools"
android:layout_width="match_parent"
android:layout_height="match_parent"
tools:context=".MainActivity"
 android:orientation="vertical" >
 <TextView
android:layout_width="wrap_content"
android:layout_height="131dp"
android:text="type number to call"
android:textAlignment="center"
android:textSize="36sp"
android:textStyle="bold" />
 <EditText
 android:id="@+id/phoneno"
android:layout_width="match_parent"
android:layout_height="wrap_content"
android:hint="Mobile numbur"
android:inputType="phone"
 tools:ignore="Missing" />
 <Button
android:layout_width="match_parent"
android:layout_height="wrap_content"
android:id="@+id/btncall"
android:text="Call"
 />
</LinearLayout>
MainAcitivity.kt
package com.example.prac123
import android.content.Intent
import android.content.pm.PackageManager
import android.content.pm.PackageManager.PERMISSION_GRANTED
import android.net.Uri
import
android.support.v7.app.AppCompatActivity
import android.os.Bundle import
android.support.v4.app.ActivityCompat
import
android.support.v4.content.ContextCompat
import
android.support.v7.app.AppCompatCallback
import android.widget.Button import
android.widget.EditText import
android.widget.Toast import
java.util.jar.Manifest
class MainActivity : AppCompatActivity() { private lateinit var btnphoneCall: Button
private lateinit var editphoneNO:EditText private var requestCall=1
 override fun onCreate(savedInstanceState: Bundle?)
{ super.onCreate(savedInstanceState)
setContentView(R.layout.activity_main)
title="Mera calling App"
editphoneNO=findViewById(R.id.phoneno)
btnphoneCall=findViewById(R.id.btncall)
btnphoneCall.setOnClickListener(){
makecall()
 }
}
Vidyalankar School of Information Technology
 private fun makecall(){ val
callinggo:String=editphoneNO.text.toString() if
(callinggo.trim{it<=' '}.isNotEmpty()){
if(ContextCompat.checkSelfPermission(this,
android.Manifest.permission.CALL_PHONE)!=PackageManager.PERMISSION_GRANTED){
ActivityCompat.requestPermissions(this,
arrayOf(android.Manifest.permission.CALL_PHONE),requestCall)
 }
else{
 val dial="tel:$callinggo"
 startActivity(Intent(Intent.ACTION_CALL, Uri.parse(dial)))
 }
}
 else{
 Toast.makeText(this,"Enter phone
numbur",Toast.LENGTH_LONG).show() }
 }
 override fun onRequestPermissionsResult(
requestCode: Int,
 permissions: Array<out String>,
grantResults: IntArray
 ) {
 if (requestCode == requestCall) {
 if (grantResults.isNotEmpty() &&
grantResults[0]==PackageManager.PERMISSION_GRANTED) { makecall() }
else {
 Toast.makeText(this, "Permission Denied to make call",
Toast.LENGTH_LONG).show() }
 }
 }
}
AndroidMainfest.xml
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
xmlns:tools="http://schemas.android.com/tools"
package="com.example.prac123">
 <uses-permission android:name="android.permission.CALL_PHONE" />
 <application
 android:allowBackup="true"
 android:dataExtractionRules="@xml/data_extraction_rules"
android:fullBackupContent="@xml/backup_rules"
android:icon="@mipmap/ic_launcher"
android:label="@string/app_name"
 android:roundIcon="@mipmap/ic_launcher_round"
android:supportsRtl="true"
android:theme="@style/Theme.Prac123"
tools:targetApi="31">
 <activity android:name=".MainActivity"
android:exported="true">
Vidyalankar School of Information Technology
Vidyalankar School of Information Technology



a99.Video players 

activity_main.xml


<?xml version="1.0" encoding="utf-8"?>  
<android.support.constraint.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"  
    xmlns:app="http://schemas.android.com/apk/res-auto"  
    xmlns:tools="http://schemas.android.com/tools"  
    android:layout_width="match_parent"  
    android:layout_height="match_parent"  
    tools:context="example.javatpoint.com.kotlinvideoplayer.MainActivity">  
  
    <FrameLayout  
        android:layout_width="match_parent"  
        android:layout_height="wrap_content">  
  
        <VideoView  
            android:id="@+id/videoView"  
            android:layout_width="wrap_content"  
            android:layout_height="308dp"  
            android:layout_marginBottom="0dp"  
            android:layout_marginEnd="0dp"  
            android:layout_marginStart="0dp"  
            app:layout_constraintBottom_toBottomOf="parent"  
            app:layout_constraintEnd_toEndOf="parent"  
            app:layout_constraintHorizontal_bias="0.0"  
            app:layout_constraintStart_toStartOf="parent"  
            app:layout_constraintTop_toTopOf="parent"  
            app:layout_constraintVertical_bias="1.0" />  
    </FrameLayout>  
</android.support.constraint.ConstraintLayout>  


MainActivity.kt

package example.javatpoint.com.kotlinvideoplayer  
  
import android.net.Uri  
import android.net.Uri.*  
import android.support.v7.app.AppCompatActivity  
import android.os.Bundle  
import android.os.Environment  
import android.widget.MediaController  
import android.widget.VideoView  
  
class MainActivity : AppCompatActivity() {  
  
    override fun onCreate(savedInstanceState: Bundle?) {  
        super.onCreate(savedInstanceState)  
        setContentView(R.layout.activity_main)  
  
        val videoView = findViewById<VideoView>(R.id.videoView)  
        //Creating MediaController  
        val mediaController = MediaController(this)  
        mediaController.setAnchorView(videoView)  
        //specify the location of media file  
        val uri:Uri = parse(Environment.getExternalStorageDirectory().getPath() + "/Movies/video.mp4")  
        //Setting MediaController and URI, then starting the videoView  
        videoView.setMediaController(mediaController)  
        videoView.setVideoURI(uri)  
        videoView.requestFocus()  
        videoView.start()  
    }  
}  

AndroidManifest.xml

<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>  
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>  

















