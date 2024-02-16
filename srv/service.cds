using Proj1 as pj from '../db/service';

service MyService {

    @odata.draft.enabled

    entity student AS projection on pj.student;
    entity course AS projection on pj.course;

}