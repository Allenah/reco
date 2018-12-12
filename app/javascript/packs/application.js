import "bootstrap";
import './application.css'
import {select} from '../components/select';
import {megamodal} from '../components/modal';
megamodal();
select();
import {horizontalScrollingBanner, setUpElements, scrollTheBanners} from "../components/home";
horizontalScrollingBanner();
setUpElements();
scrollTheBanners();
