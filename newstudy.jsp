<%--
	Document: aboutl.jsp
	Created On: Feb 4, 2016
	Authors: Deepak Rohan, Abhishek

 --%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<script type="text/javascript" src="js/newstudy.js"> </script>

<%-- Code to display Page Name --%>
<h3 id="page_name">Adding a study</h3>
 <%-- Code to go Back to the Main Page  --%>
 
<a href="<c:url value='main.jsp' />" id="back_to_page">&laquo;Back to the Main Page</a>
<%-- Section to create new study --%>
<section>
    <form class="form-horizontal" action="StudyController" method="post">
    
        <input type="hidden" name="action" value="add">
        
    	<div class="form-group">
        <label class="col-sm-4 control-label">Study Name *</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="study_name" required />
         </div>
            </div>
        
        <div class="form-group">
        <label class="col-sm-4 control-label">Question Text *</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="question_text" required/>
         </div>
            </div>
        
        <div class="form-group">
        <label class="col-sm-4 control-label">Image *</label>
            <select name="image-url">
                <option value="Aerospce.jpg">Aerospace</option>
                <option value="Anthropology.png">Anthropology</option>
                <option value="Art.jpg">Art</option>
                <option value="Astronomy.jpg">Astronomy</option>
                <option value="Biology.jpg">Biology</option>
                <option value="Botany.png">Botany</option>
                <option value="Business.jpg">Business</option>
                <option value="Chemistry.jpg">Chemistry</option>
                <option value="Civil.jpg">Civil</option>
                <option value="Computer.jpg">Computer</option>
                <option value="dental.jpg">Dental</option>
                <option value="ecology.jpg">Ecology</option>
                <option value="education.jpg">Education</option>
                <option value="Electrical.jpg">Electrical</option>
                <option value="Finance.jpg">Finance</option>
                <option value="forensics.png">Forensics</option>
                <option value="Geography.jpg">Geography</option>                
                <option value="Geology.jpg">Geology</option>
                <option value="History.jpg">History</option>
                <option value="IT.jpg">IT</option>
                <option value="Language.jpg">Language</option>
                <option value="law.jpg">Law</option>
                <option value="Life_sciences.jpg">Life Sciences</option>
                <option value="logistics.jpg">Logistics</option>                
                <option value="marketing.jpg">Marketing</option>
                <option value="Math.png">Mathematics</option>
                <option value="medicine.jpg">Medicine</option>
                <option value="Mech.jpg">Mechanical</option>
                <option value="Meteorology.png">Meteorology</option>
                <option value="Mobile_phone.png">Mobile Phone</option>
                <option value="music.jpg">Music</option>
                <option value="Nano.jpg">Nanoscience</option>                
                <option value="Neuroscience.jpg">Neuroscience</option>
                <option value="oceanography.jpg">Oceanography</option>
                <option value="optics.jpg">Optics</option>
                <option value="paleontology.jpg">Paleontology</option>
                <option value="physics.png">Physics</option>
                <option value="Politics.jpg">Politics</option>
                <option value="psycology.jpg">Psychology</option>
                <option value="religion.png">Religion</option>
                <option value="Sports.jpg">Sports</option>
                <option value="stats.jpg">Statistics</option>
                <option value="teaching.gif">Teaching</option>
                <option value="Technology.jpg">Technology</option>
                <option value="zoology.jpg">Zoology</option>  
            </select> 
        </div>
        
        <div class="form-group">
        <label class="col-sm-4 control-label"># Participants *</label>
        <div class="col-sm-4">
        <input type="text" class="form-control" name="participant_text" required/>
         </div>
            </div>
        
        <div class="form-group">
        <label class="col-sm-4 control-label"># Answers *</label>
        <div class="col-sm-4">
        <select name="answers" class="form-control" id="new_study_answers">
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
        </select> <br>
         </div>
            </div>
        
        
        <div id="TextBoxContainer">
    	<!-- Textboxes will be added here -->
		</div>
       
        
        <div class="form-group">
        <label class="col-sm-4 control-label">Description *</label>
        <div class="col-sm-4">
        <textarea name="description" class="form-control" required></textarea>
         </div>
            </div>
        
        <div class="form-group">
        <div class="col-sm-offset-5 col-sm-4">
        <button type="submit"  class="btn btn-primary">Submit</button>
         </div>
            </div>
    </form>
</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>