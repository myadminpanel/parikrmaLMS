    <header id="header" role="banner">
        <div class="container">
            <div id="navbar" class="navbar navbar-default">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                        <a class="navbar-brand" href="<?=base_url();?><?=($this->session->userdata('log'))?'index.php/dashboard/'.$this->session->userdata('user_id'):''?>">
                        <?php if (file_exists('./logo.png')) { ?>
                            <img src="<?=base_url();?>logo.png" width="200px" height="78px">
                        <?php }else{
                            echo ($brand_name)?$brand_name:'MinorSchool';
                        } ?>
                        </a> <!-- Brand Title -->
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="<?=($this->uri->segment(1) == '')?'active':''; ?>">
                            <a href="<?=base_url('index.php');?>"><i class="fa fa-home"></i></a>
                        </li>
                        <?php //if ($this->session->userdata('log')) { ?>
                            <li class="<?=($this->uri->segment(1) == 'course')?'active':''; ?>">
                                <a href="<?=base_url('index.php/course');?>">Courses</a>
                            </li>
                            <li class="<?=($this->uri->segment(1) == 'exam_control')?'active':''; ?>">
                                <a href="<?=base_url('index.php/exam_control/view_all_mocks');?>">Exams</a>
                            </li>
                        <?php //} ?>
                        <li class="<?=($this->uri->segment(2) == 'pricing')?'active':''; ?>">
                            <a href="<?=base_url('index.php/guest/pricing');?>">Pricing</a>
                        </li>
                        <li class="<?=($this->uri->segment(1) == 'blog')?'active':''; ?>">
                            <a href="<?=base_url('index.php/blog');?>">Blog</a>
                        </li>
                        <?php if ($this->session->userdata('log')) { ?>
                            <li class="<?=($this->uri->segment(1) == 'noticeboard')?'active':''; ?>">
                                <a href="<?=base_url('index.php/noticeboard/notices');?>">Noticeboard</a>
                            </li>
                            <li class="<?=($this->uri->segment(2) == 'view_faqs')?'active':''; ?>">
                                <a href="<?=base_url('index.php/guest/view_faqs');?>">FAQ</a>
                            </li>
                            <li>
                                <a href="<?=base_url('index.php/login_control/logout'); ?>"><i class="fa fa-power-off"></i></a>
                            </li>
                        <?php } ?>
                        <?php if ( ! $this->session->userdata('log')) { ?>
                            <li>
                                <a href="<?=base_url('index.php/admin');?>">Admin Login</a>
                            </li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>
    </header><!--/#header-->
    <?php   //   echo "<pre/>"; print_r($this->uri->segment(1)); exit();    ?>