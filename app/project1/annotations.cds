using MyService as service from '../../srv/service';

annotate service.student with @(
    UI.HeaderInfo : {
    TypeName : 'Student Table',
    TypeNamePlural : 'Student Table',
},

    UI.SelectionFields : [
        studentid,
        studentname,
        studentage
    ],
    
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : studentage,
            Label : 'studentage',
        },{
            $Type : 'UI.DataField',
            Value : studentid,
            Label : 'studentid',
        },{
            $Type : 'UI.DataField',
            Value : studentname,
            Label : 'studentname',
        },]
);
annotate service.student with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'studentid',
                Value : studentid,
            },
            {
                $Type : 'UI.DataField',
                Label : 'studentname',
                Value : studentname,
            },
            {
                $Type : 'UI.DataField',
                Label : 'studentage',
                Value : studentage,
            },
        ],
    },
    UI.Facets : [
        
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
