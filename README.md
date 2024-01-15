<h2>Frameworks/Library used:</h2>
<ol>
  <li>Node.js</li>
  <li>Express.js</li>
  <li>MySQL2</li>
  <li>Multer</li>
  <li>Cloudinary</li>
</ol>

<h2>API Endpoints</h2>
<ol>
  <li>
    <p>Method: POST</p>
    <p>Route: /patient/register</p>
    <p>Description: register new patient
    <p>Parameters: </p>
    <ul>
      <li>name : Name of patient</li>
      <li>address : Address of patient</li>
      <li>email : Email of patient</li>
      <li>phone_number : Contact of patient</li>
      <li>password : Password to register </li>
      <li>patient_photo : Photo of patient</li>
    </ul>
  </li>

  <li>
    <p>Method : GET</p>
    <p>Route : /hospital/info</p>
    <p>Description: request hospital information</p>
    <p>Parameters: </p>
    <ul>
      <li>hospitalId : Id of hospital whose information is to be requested.</li>
    </ul>
  </li>
</ol>
