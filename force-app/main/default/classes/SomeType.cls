public with sharing class SomeType {

    public static final String nullString;
    public static final String emptyString = '';
    public static final String nullTextString = 'null';

    private String aString;
    private Map<String,Integer> simpleMap;
    private Map<String,List<SomeType>> complexMap;

    public SomeType(String aString) {
        this.aString = aString;
    }

    public String getString() {
        return aString;
    }

    public void doSomeStuff(String parameter) {
        System.debug('populateInfo: ' + parameter);

        List<String> strings = new List<String>();
        strings.add('string1');
        strings.add('string2');

        List<SomeType> types = new List<SomeType>();
        types.add(new SomeType('type-1'));
        types.add(new SomeType('type-2'));

        Set<SomeType> setOfTypes = new Set<SomeType>();
        setOfTypes.add(new SomeType('type-3'));
        setOfTypes.add(new SomeType('type-4'));
        setOfTypes.add(new SomeType('type-5'));
        setOfTypes.add(new SomeType('type-6'));
        setOfTypes.add(new SomeType('type-7'));

        simpleMap = new Map<String,Integer>();
        simpleMap.put('a', 1);
        simpleMap.put('b', 2);
        System.debug('map: ' + simpleMap);

        complexMap = new Map<String,List<SomeType>>();
        complexMap.put('key1', types);
        System.debug('map: ' + complexMap);
    }

}
